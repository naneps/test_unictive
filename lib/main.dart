import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:test_unictive/app/config/app_router.dart';
import 'package:test_unictive/app/config/themes/util.dart';
import 'package:test_unictive/core/blocs/theme_cubit.dart';
import 'package:test_unictive/features/user/data/repositories/user_repository.dart';
import 'package:test_unictive/features/user/domain/usecases/get_user_detail_usecase.dart';
import 'package:test_unictive/features/user/domain/usecases/get_users_usecase.dart';
import 'package:test_unictive/features/user/presentation/bloc/bloc/user_bloc.dart';
import 'package:test_unictive/features/user/services/user_service.dart';

import 'app/config/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Provider<UserService>(
          create: (_) => UserService(),
        ),
        Provider<UserRepository>(
          create: (context) =>
              UserRepository(userService: context.read<UserService>()),
        ),
        Provider<GetUsersUseCase>(
          create: (context) =>
              GetUsersUseCase(repository: context.read<UserRepository>()),
        ),
        Provider<GetUserDetailUseCase>(
          create: (context) =>
              GetUserDetailUseCase(repository: context.read<UserRepository>()),
        ),
        BlocProvider(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => UserBloc(
            getUsersUseCase: context.read<GetUsersUseCase>(),
            getUserDetailUseCase: context.read<GetUserDetailUseCase>(),
          ),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          final textTheme = createTextTheme(context, "Poppins", "Poppins");
          final materialTheme = MaterialTheme(textTheme);
          return MaterialApp(
            title: 'Flutter Demo',
            theme: materialTheme.light(),
            darkTheme: materialTheme.dark(),
            themeMode: themeMode,
            onGenerateRoute: AppRouter.generateRoute,
            // routes: AppRouter.routes,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
