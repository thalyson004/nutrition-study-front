import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_study_front/layers/presentation/pages/splash/splash.dart';
import '../../layers/presentation/pages/home/home.dart';

final routers = GoRouter(
  initialLocation: Home.route,
  routes: <GoRoute>[
    GoRoute(
      name: Splash.name,
      path: Splash.route,
      builder: (BuildContext context, GoRouterState state) => const Splash(),
    ),
    GoRoute(
      name: Home.name,
      path: Home.route,
      builder: (BuildContext context, GoRouterState state) => const Home(),
    ),
  ],
);
