part of 'user_bloc.dart';

sealed class UserEvent {}

class UserFetchEvent extends UserEvent {}

class UserFetchDetailEvent extends UserEvent {}

class UserRefreshEvent extends UserEvent {}

class UserDeleteEvent extends UserEvent {}

class UserUpdateEvent extends UserEvent {}

class UserCreateEvent extends UserEvent {}
