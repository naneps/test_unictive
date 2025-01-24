import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unictive/features/user/domain/entities/user_entity.dart';
import 'package:test_unictive/features/user/domain/usecases/get_user_detail_usecase.dart';
import 'package:test_unictive/features/user/domain/usecases/get_users_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCase getUsersUseCase;
  final GetUserDetailUseCase getUserDetailUseCase;

  UserBloc({
    required this.getUsersUseCase,
    required this.getUserDetailUseCase,
  }) : super(UserInitialState()) {
    on<UserFetchEvent>((event, emit) async {
      try {
        emit(UserLoadingState());
        final users = await getUsersUseCase.call();
        print("USERS : $users");
        if (users.isEmpty) {
          emit(UserEmptyState());
          return;
        }
        emit(UserLoadedState(users: users));
      } catch (e) {
        emit(UserErrorState(message: 'Error fetching users'));
      }
    });

    on<UserFetchDetailEvent>((event, emit) async {
      try {
        emit(UserLoadingState());
        final user = await getUserDetailUseCase.call(event.userId);
        emit(
            UserLoadedDetailState(user: user)); // Emit state dengan detail user
      } catch (e) {
        emit(UserErrorState(
            message: 'Error fetching user details')); // Emit error jika gagal
      }
    });

    // Event untuk refresh state
    on<UserRefreshEvent>((event, emit) => emit(UserEmptyState()));
  }
}
