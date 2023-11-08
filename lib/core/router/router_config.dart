import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voluntiersapp/core/router/paths.dart' as paths;
import 'package:voluntiersapp/core/router/router_observer.dart';
import 'package:voluntiersapp/core/router/routes.dart' as routes;
import 'package:voluntiersapp/ui/events/Events_page.dart';
import 'package:voluntiersapp/ui/home/home_page.dart';
import 'package:voluntiersapp/ui/leaders/leaders_page.dart';
import 'package:voluntiersapp/ui/notFound/page_notfound.dart';
import 'package:voluntiersapp/ui/teams/teams_page.dart';
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
      paths.UserDescriptionsPath,
      paths.SettingsPagePath,
      paths.LeadersPagePath,
      paths.TeamsPagePath,
      paths.EventsPagePath,
    ];

    if (!validRoutes.contains(requestedPath)) {
      return paths.NotFoundPath;
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
      path: paths.UserDescriptionsPath,
      name: routes.UserDescriptions,
      builder: (context, state) => UserPage(title: 'User Descriptions'),
    ),
    GoRoute(
      path: paths.SettingsPagePath,
      name: routes.SettingsPageRoute,
      builder: (context, state) => const SettingsPage(title: 'Settings'),
    ),
    GoRoute(
      path: paths.LeadersPagePath,
      name: routes.LeadersPageRoute,
      builder: (context, state) => const LeadersPage(title: 'Leaders'),
    ),
    GoRoute(
      path: paths.TeamsPagePath,
      name: routes.TeamsPageRoute,
      builder: (context, state) => const TeamsPage(title: 'Teams'),
    ),
    GoRoute(
      path: paths.EventsPagePath,
      name: routes.EventsPageRoute,
      builder: (context, state) => const EventsPage(title: 'Events'),
    ),
    GoRoute(
      path: paths.NotFoundPath,
      name: routes.NotFoundPageRoute,
      builder: (context, state) => const NotFoundPage(),
    ),
  ],
);
