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

import "package:flutter/foundation.dart";
import "package:logger/logger.dart";

final logger = Logger(
  printer: PrefixPrinter(
    PrettyPrinter(
      methodCount: 0,
      noBoxingByDefault: true,
      colors: false,
      dateTimeFormat: DateTimeFormat.none,
    ),
  ),
  level: kDebugMode ? Level.all : Level.info,
);
