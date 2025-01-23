import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unictive/features/user/domain/entities/user_entity.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitialState()) {
    on<UserRefreshEvent>((event, emit) => emit(UserEmptyState()));
    on<UserFetchEvent>((event, emit) => emit(UserLoadingState()));
    on<UserFetchDetailEvent>((event, emit) => emit(UserLoadingState()));
    on<UserCreateEvent>((event, emit) => emit(UserLoadingState()));
    on<UserUpdateEvent>((event, emit) => emit(UserLoadingState()));
    on<UserDeleteEvent>((event, emit) => emit(UserLoadingState()));
  }
}
