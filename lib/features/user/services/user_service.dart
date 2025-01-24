import 'package:test_unictive/core/network/base_api.dart';

class UserService extends BaseApiCall {
  Future<Response> getUser(int userId) async {
    return get('/users/$userId');
  }

  Future<Response> getUsers() async {
    return get('/users', queryParameters: {'limit': 200});
  }
}
