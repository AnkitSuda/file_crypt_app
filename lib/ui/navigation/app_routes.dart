/*
 * Copyright (c) 2024 Ankit Suda.
 *
 * Licensed under the GNU General Public License v3
 *
 * This is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
 *
 * This software is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 */

import "package:file_crypt_app/ui/navigation/routes.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../presentation/main/main_screen.dart";
import "../presentation/settings/settings_screen.dart";

class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.mainRoot,
    debugLogDiagnostics: true,
    requestFocus: true,
    navigatorKey: rootNavigatorKey,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: Routes.mainRoot,
        builder: (context, state) => const MainScreen(),
        routes: [
          GoRoute(
            path: Routes.settings,
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );

  static GoRouter get router => _router;
}
