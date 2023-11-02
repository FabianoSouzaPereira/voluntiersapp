import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voluntiersapp/core/router/paths.dart' as paths;
import 'package:voluntiersapp/core/router/router_observer.dart';
import 'package:voluntiersapp/core/router/routes.dart' as routes;
import 'package:voluntiersapp/ui/home/home_page.dart';
import 'package:voluntiersapp/ui/users/users_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  initialLocation: paths.HomePagePath,
  navigatorKey: navigatorKey,
  observers: [GoRouterObserverGlobal()],
  redirect: (context, goRouterState) {
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
      name: routes.UsersPageSate,
      builder: (context, state) => const UserPage(title: 'User'),
    ),
  ],
);
