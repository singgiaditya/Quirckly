import 'package:quirckly/app/core/router/app_router.dart';
import 'package:quirckly/app/core/themes/app_theme.dart';
import 'package:quirckly/app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  await GetIt.instance.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Quirkly",
      theme: appTheme(),
      themeMode: ThemeMode.dark,
      routerConfig: AppRouter.router,
    );
  }
}
