import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unictive/app/config/app_router.dart';
import 'package:test_unictive/app/constants/app_constants.dart';
import 'package:test_unictive/app/constants/paddings.dart';
import 'package:test_unictive/features/auth/presentation/bloc/login_cubit.dart';
import 'package:test_unictive/features/auth/presentation/bloc/login_state.dart';
import 'package:test_unictive/features/auth/presentation/widgets/login_button.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appPaddings = AppPaddings();
    final loginCubit = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Container(
          padding: appPaddings.allPaddingSmall,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    logoAsset,
                    height: 100,
                  ),
                ),
                Text(
                  'Welcome back',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Sign in to continue',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Divider(),
                TextFormField(
                  controller: loginCubit.emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    hintText: 'enter your email e.g. 6tZkM@example.com',
                  ),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: loginCubit.passwordController,
                  obscureText: !state.isPasswordVisible,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'enter your password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        state.isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: loginCubit.togglePasswordVisibility,
                    ),
                  ),
                ),
                if (state.errorMessage.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      state.errorMessage,
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
                    ),
                  ),
                SizedBox(height: 10),
                LoginButton(
                  isLoading: state.isLoading,
                  onPressed: () {
                    loginCubit.login(
                      onSuccess: () {
                        Navigator.pushReplacementNamed(
                            context, AppRouter.userListRoute);
                      },
                    );
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forgot password?'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
