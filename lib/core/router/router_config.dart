import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voluntiersapp/core/router/paths.dart' as paths;
import 'package:voluntiersapp/core/router/router_observer.dart';
import 'package:voluntiersapp/core/router/routes.dart' as routes;
import 'package:voluntiersapp/ui/home/home_page.dart';
import 'package:voluntiersapp/ui/notFound/page_notfound.dart';
import 'package:voluntiersapp/ui/users/users/users_page.dart';
import 'package:voluntiersapp/ui/settings/settings_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  initialLocation: paths.HomePagePath,
  navigatorKey: navigatorKey,
  observers: [GoRouterObserverGlobal()],
  redirect: (context, state) {
    final requestedPath = state.fullPath;

    final validRoutes = [
      paths.HomePagePath,
      paths.UserPagePath,
      paths.UserDescriptions,
      paths.SettingsPagePath,
    ];

    if (!validRoutes.contains(requestedPath)) {
      return paths.NotFound;
    }

    return null;
  },
  routes: [
    GoRoute(
        path: paths.HomePagePath,
        name: routes.HomePageRoute,
        builder: (context, state) {
          return const HomePage(
            title: 'Home',
          );
        }),
    GoRoute(
      path: paths.UserPagePath,
      name: routes.UsersPageRoute,
      builder: (context, state) => UserPage(title: 'User'),
    ),
    GoRoute(
      path: paths.UserDescriptions,
      name: routes.UserDescriptions,
      builder: (context, state) => UserPage(title: 'User Descriptions'),
    ),
    GoRoute(
      path: paths.SettingsPagePath,
      name: routes.SettingsPageRoute,
      builder: (context, state) => const SettingsPage(title: 'Settings'),
    ),
    GoRoute(
      path: paths.NotFound,
      name: routes.NotFoundPageRoute,
      builder: (context, state) => const NotFoundPage(),
    ),
  ],
);
