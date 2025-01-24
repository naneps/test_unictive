import 'package:test_unictive/features/user/data/repositories/user_repository.dart';
import 'package:test_unictive/features/user/domain/entities/user_entity.dart';

class GetUserDetailUseCase {
  UserRepository repository;
  GetUserDetailUseCase({required this.repository});
  Future<UserEntity> call(int userId) async {
    final result = await repository.getUserDetail(userId);
    return UserEntity.fromModel(result);
  }
}
