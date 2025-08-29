import 'package:flutter/material.dart';
import 'package:movies/core/network/network_service.dart';
import 'package:movies/core/router/navigator_key.dart';
import 'package:movies/core/screens/basic_screen.dart';

import 'core/generated/assets.gen.dart';
import 'core/service_locator/service_locator.dart';
import 'core/themes/theme.dart';
import 'core/themes/util.dart';
import 'features/people/presentation/screens/people_screen.dart';

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
    return MaterialApp(
      title: 'Movies',
      theme: theme.light(),      // Light mode theme
      darkTheme: theme.dark(),   // Dark mode theme
      home: const MyHomePage(),
      navigatorKey: navigatorKey,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    ServiceLocator.get<NetworkService>();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return PeopleScreen();
  }
}
