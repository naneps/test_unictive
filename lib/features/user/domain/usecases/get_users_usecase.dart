import 'package:test_unictive/features/user/data/repositories/user_repository.dart';
import 'package:test_unictive/features/user/domain/entities/user_entity.dart';

class GetUsersUseCase {
  UserRepository repository;
  GetUsersUseCase({required this.repository});
  Future<List<UserEntity>> call() async {
    final result = await repository.getUsers();
    return result.map((model) => UserEntity.fromModel(model)).toList();
  }
}
