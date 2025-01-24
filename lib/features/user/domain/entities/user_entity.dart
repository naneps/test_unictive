import 'package:equatable/equatable.dart';
import 'package:test_unictive/features/user/data/models/user_model.dart';

class UserEntity extends Equatable {
  static const empty = UserEntity(id: 0, name: '', email: '');
  final int id;
  final String name;
  final String email;
  final String? avatar;
  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    this.avatar,
  });

  factory UserEntity.fromModel(UserModel model) {
    return UserEntity(
      id: model.id,
      name: '${model.firstName} ${model.lastName}',
      email: model.email,
      avatar: model.avatar,
    );
  }
  @override
  List<Object?> get props => [id, name, email];
}
