import 'dart:convert';

import 'package:test_unictive/features/user/data/models/user_model.dart';
import 'package:test_unictive/features/user/services/user_service.dart';

class UserRepository {
  UserService userService;
  UserRepository({required this.userService});

  Future<UserModel> getUserDetail(int id) async {
    final response = await userService.getUser(id);
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final data = body['data'];
      return UserModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<UserModel>> getUsers() async {
    try {
      final response = await userService.getUsers();
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final data = body['data'];
        return data.map<UserModel>((e) => UserModel.fromJson(e)).toList();
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      print("ERROR ON REPO GET USERS : $e");
      throw Exception('Error on get users $e');
    }
  }
}
