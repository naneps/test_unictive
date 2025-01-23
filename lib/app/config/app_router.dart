import 'package:flutter/material.dart';

class AppRoutePath {
  final String? route;
  final int? id;

  AppRoutePath.home()
      : route = '/',
        id = null;
  AppRoutePath.login()
      : route = '/login',
        id = null;
  AppRoutePath.userList()
      : route = '/user-list',
        id = null;
  AppRoutePath.userDetail(this.id)
      : route = '/user-detail',
        id = id;

  bool get isHomePage => route == '/';
  bool get isLoginPage => route == '/login';
  bool get isUserListPage => route == '/user-list';
  bool get isUserDetailPage => route == '/user-detail';
}

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      return AppRoutePath.home();
    }

    switch (uri.pathSegments[0]) {
      case 'login':
        return AppRoutePath.login();
      case 'user-list':
        return AppRoutePath.userList();
      case 'user-detail':
        if (uri.pathSegments.length == 2) {
          final id = int.tryParse(uri.pathSegments[1]);
          if (id != null) {
            return AppRoutePath.userDetail(id);
          }
        }
        break;
    }

    return AppRoutePath.home(); // Default fallback
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) {
    if (configuration.isHomePage) {
      return RouteInformation(location: '/');
    }
    if (configuration.isLoginPage) {
      return RouteInformation(location: '/login');
    }
    if (configuration.isUserListPage) {
      return RouteInformation(location: '/user-list');
    }
    if (configuration.isUserDetailPage && configuration.id != null) {
      return RouteInformation(location: '/user-detail/${configuration.id}');
    }
    return null;
  }
}
