import 'package:flutter/material.dart';
import 'package:movies/core/router/router_config.dart';
import 'core/service_locator/service_locator.dart';
import 'core/themes/theme.dart';
import 'core/themes/util.dart';

void main() {
  ServiceLocator.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Roboto", "Cairo");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      title: 'Movies',
      theme: theme.light(),      // Light mode theme
      darkTheme: theme.dark(), // Dark mode theme
      routerConfig: getRouter,
    );
  }
}


