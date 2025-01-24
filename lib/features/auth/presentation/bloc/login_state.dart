import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isSuccess,
    @Default("") String errorMessage,
  }) = _LoginState;

  const LoginState._(); // Tambahkan konstruktor privat di sini

  @override
  List<Object?> get props =>
      [isLoading, isPasswordVisible, isSuccess, errorMessage];
}
