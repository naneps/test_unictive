import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unictive/app/constants/paddings.dart';
import 'package:test_unictive/features/auth/presentation/bloc/login_cubit.dart';
import 'package:test_unictive/features/auth/presentation/widgets/form_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appPaddings = AppPaddings();
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(),
        child: Container(
          padding: appPaddings.allPaddingSmall,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.secondary,
              ],
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Center(child: const FormLogin());
            } else {
              return Center(
                child: SizedBox(width: 400, child: const FormLogin()),
              );
            }
          }),
        ),
      ),
    );
  }
}
