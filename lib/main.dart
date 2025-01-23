import 'package:flutter/material.dart';
import 'package:test_unictive/app/config/app_router.dart';
import 'package:test_unictive/app/config/themes/util.dart';

import 'app/config/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      onGenerateRoute: AppRouter.generateRoute,
      routes: AppRouter.routes,
    );
  }
}
