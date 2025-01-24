import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unictive/app/constants/paddings.dart';
import 'package:test_unictive/features/user/presentation/bloc/bloc/user_bloc.dart';
import 'package:test_unictive/features/user/presentation/widgets/user_widget.dart';

class UserDetailPage extends StatelessWidget {
  final int? id;
  const UserDetailPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    // Trigger the event to fetch user details when the page is loaded

    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(
        getUsersUseCase: context.read(),
        getUserDetailUseCase: context.read(),
      )..add(UserFetchDetailEvent(userId: id!)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("User Details "),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          elevation: 0,
        ),
        body: Padding(
          padding: AppPaddings().allPaddingLarge,
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is UserLoadedDetailState) {
                final user = state.user;
                return Center(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Hero(
                      tag: user.id.toString(),
                      child: UserWidget(
                        user: user,
                        showButtonDetail: false,
                      ),
                    ),
                  ),
                );
              } else if (state is UserErrorState) {
                return Center(child: Text(state.message));
              } else {
                return const Center(child: Text("No user found"));
              }
            },
          ),
        ),
      ),
    );
  }
}
