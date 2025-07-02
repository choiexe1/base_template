import 'package:base_template/config/routes/router.dart';
import 'package:base_template/config/theme/app_theme.dart';
import 'package:base_template/injection_container.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injection();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: appRouter, theme: theme());
  }
}
