import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies/core/router/navigator_key.dart';
import 'package:movies/features/people/presentation/manager/get_popular_people_cubit/get_popular_people_cubit.dart';
import 'package:movies/features/people/presentation/screens/people_screen.dart';

GoRouter get getRouter => GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BlocProvider(
          create: (_) => GetPopularPeopleCubit.instance..call(),
          child: const PeopleScreen(),
      ),
    ),
  ],

  navigatorKey: navigatorKey,
);
