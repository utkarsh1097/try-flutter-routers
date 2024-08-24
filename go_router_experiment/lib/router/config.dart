import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_experiment/views/details_screen.dart';
import 'package:go_router_experiment/views/home_screen.dart';
import 'package:go_router_experiment/views/user_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/users/fgkhkhhg',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
        GoRoute(
            path: 'users',
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: ':userId',
                builder: (context, state) => UserScreen(
                  id: (state.pathParameters['userId']) ?? "",
                ),
              )
            ])
      ],
    ),
  ],
);
