import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_unictive/features/auth/presentation/bloc/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginCubit() : super(LoginState());

  Future<void> login({Function? onSuccess}) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2));

    if (emailController.text.contains("test") &&
        passwordController.text == "12345") {
      emit(state.copyWith(isLoading: false, isSuccess: true, errorMessage: ""));
      emailController.clear();
      passwordController.clear();
      onSuccess!();
    } else {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: "Invalid email or password",
      ));
    }
  }

  // Toggle visibility of password
  void togglePasswordVisibility() {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }
}
