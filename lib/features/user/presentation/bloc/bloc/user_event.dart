part of 'user_bloc.dart';

sealed class UserEvent {}

class UserFetchDetailEvent extends UserEvent {
  final int userId;

  UserFetchDetailEvent({required this.userId});
}

class UserFetchEvent extends UserEvent {}

class UserRefreshEvent extends UserEvent {}
