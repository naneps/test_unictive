import 'package:test_unictive/core/network/base_api.dart';

class UserService extends BaseApiCall {
  Future<Response> getUsers() async {
    return get('/users');
  }
}
