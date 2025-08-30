import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies/core/exceptions/parse_failure.dart';
import 'package:movies/core/router/navigator_key.dart';
import 'package:movies/core/router/routes.dart';
import 'package:movies/core/widgets/error_screen/error_screen.dart';
import 'package:movies/features/people/presentation/manager/get_popular_people_cubit/get_popular_people_cubit.dart';
import 'package:movies/features/people/presentation/manager/save_person_photo_cubit/save_photo_cubit.dart';
import 'package:movies/features/people/presentation/screens/people_screen.dart';
import 'package:movies/features/people/presentation/screens/person_details_screen.dart';
import '../../features/people/domain/entities/person.dart';
import 'core/service_locator/service_locator.dart';
import 'core/themes/theme.dart';
import 'core/themes/util.dart';
import 'features/people/domain/usecase/save_person_photo_use_case.dart';
import 'features/people/presentation/manager/get_person_photos_cubit/get_person_photos_cubit.dart';
import 'features/people/presentation/screens/photo_screen.dart';
part 'core/router/router_config.dart';
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
      routerConfig: _getRouter,
    );
  }
}


