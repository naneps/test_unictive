part of 'user_bloc.dart';

sealed class UserState extends Equatable {}

class UserInitialState extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoadingState extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoadedState extends UserState {
  final List<UserEntity> users;
  UserLoadedState({required this.users});
  @override
  List<Object> get props => [users];
}

class UserLoadedDetailState extends UserState {
  final UserEntity user;
  UserLoadedDetailState({required this.user});
  @override
  List<Object> get props => [user];
}

class UserErrorState extends UserState {
  final String message;
  UserErrorState({required this.message});
  @override
  List<Object> get props => [message];
}

class UserEmptyState extends UserState {
  @override
  List<Object> get props => [];
}
