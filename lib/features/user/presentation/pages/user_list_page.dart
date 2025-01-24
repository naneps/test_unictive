import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unictive/app/constants/paddings.dart';
import 'package:test_unictive/features/user/presentation/bloc/bloc/user_bloc.dart';
import 'package:test_unictive/features/user/presentation/widgets/user_widget.dart';
import 'package:test_unictive/shared/widgets/button_toggle_theme.dart';
import 'package:test_unictive/shared/widgets/fade_in_wrapper.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc(
        getUsersUseCase: context.read(),
        getUserDetailUseCase: context.read(),
      )..add(UserFetchEvent()), // Provide UserBloc
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Users"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          elevation: 0,
          actions: [ButtonToggleTheme()],
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              ); // Show loading indicator
            } else if (state is UserLoadedState) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<UserBloc>().add(UserFetchEvent());
                },
                child: LayoutBuilder(builder: (context, constraints) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          (constraints.maxWidth ~/ 200).clamp(2, 10),
                      mainAxisExtent: 240,
                    ),
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: AppPaddings().allPaddingMedium,
                    itemCount: state.users.length,
                    itemBuilder: (context, index) {
                      final user = state.users[index];
                      return FadeInWrapper(
                        delay: (index * 100).clamp(0, 500),
                        child: UserWidget(user: user),
                      );
                    },
                  );
                }),
              );
            } else if (state is UserErrorState) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<UserBloc>().add(UserFetchEvent());
                },
                child: ListView(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(state.message), // Show error message
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text("No users found"),
              ); // Show empty state
            }
          },
        ),
      ),
    );
  }
}
