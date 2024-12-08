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

class RouteParams {
  static const id = "id";
}

sealed class RouteMaker {
  static String _make(
    String route, {
    String root = Routes.mainRoot,
  }) =>
      "$root/$route";

  static String settings() => _make(Routes.settings);
}

sealed class Routes {
  static const root = "/";
  static const mainRoot = "/main";
  static const settings = "settings";
}
