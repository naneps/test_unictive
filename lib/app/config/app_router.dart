import 'package:flutter/material.dart';
import 'package:test_unictive/features/auth/presentation/pages/login_page.dart';
import 'package:test_unictive/features/user/presentation/pages/user_detail_page.dart';
import 'package:test_unictive/features/user/presentation/pages/user_list_page.dart';
import 'package:test_unictive/shared/pages/error_page.dart';
import 'package:test_unictive/shared/pages/splash_page.dart';

class AppRouter {
  static const String loginRoute = '/login';
  static const String splashRoute = '/';
  static const String userDetailRoute = '/user-detail';
  static const String userListRoute = '/user-list';
  static Map<String, WidgetBuilder> get routes {
    return {
      splashRoute: (_) => const SplashPage(),
      loginRoute: (_) => const LoginPage(),
      userListRoute: (_) => const UserListPage(),
      userDetailRoute: (_) => UserDetailPage(),
    };
  }

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
          settings: settings,
        );
      case loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
          settings: settings,
        );
      case userListRoute:
        return MaterialPageRoute(
          builder: (_) => const UserListPage(),
          settings: settings,
        );
      case userDetailRoute:
        final args = settings.arguments as Map<String, dynamic>?;
        final id = args?['id'] as int?;
        print("ARGS: $args");
        if (id != null) {
          return MaterialPageRoute(
            builder: (_) => UserDetailPage(id: id),
            settings: settings,
          );
        }
        return _errorRoute(); // Fallback for invalid arguments
      default:
        return _errorRoute(); // Handle undefined routes
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const ErrorPage(),
    );
  }
}
