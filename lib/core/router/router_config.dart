part of '../../main.dart';

final _getRouter = GoRouter(
  initialLocation: Routes.popularPeople,
  routes: [
    GoRoute(
      path: Routes.popularPeople,
      builder: (context, state) => BlocProvider(
        create: (_) => GetPopularPeopleCubit.instance..call(),
        child: const PeopleScreen(),
      ),
    ),
    GoRoute(
      path: Routes.person,
      pageBuilder: (context, state) {
        final person = state.extra as Person?;
        final personId = int.tryParse(state.pathParameters['id'] ?? '');

        final Widget widget;
        if (person == null || personId == null) {
          widget = ErrorScreen(
            actionTitle: 'Go Back',
            onActionPressed: () {
              context.push(Routes.popularPeople);
            },
            failure: ParseFailure(),
          );
        } else {
          widget = MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => GetPersonPhotosCubit.instance..call(personId),
              ),
            ],
            child: PersonDetailsScreen(person),
          );
        }

        return CupertinoPage(child: widget, fullscreenDialog: true);
      },
      routes: [
        GoRoute(
          path: Routes.personPhoto,
          builder: (context, state) {
            final savePersonPhotoParams = state.extra as SavePhotoParams?;
            if (savePersonPhotoParams == null) {
              return ErrorScreen(
                onActionPressed: () => context.pop(),
                failure: ParseFailure(),
              );
            }
            return BlocProvider(
              create: (context) => SavePhotoCubit.instance,
              child: PhotoScreen(
                savePhotoParams: savePersonPhotoParams,
              ),
            );
          },
        ),
      ]
    ),

  ],

  navigatorKey: navigatorKey,
);
