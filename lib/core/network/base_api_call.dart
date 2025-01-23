import 'package:http_api_service/http_api_service.dart';

abstract class BaseApiCall extends ApiService {
  BaseApiCall() : super(baseUrl: 'https://jsonplaceholder.typicode.com');
}
