// SPDX-License-Identifier: MIT
// Copyright (c) 2023 Allan Pereira <https://github.com/allanpereira99>

import 'package:epic_free_games/epic_free_games.dart';

void main() async {
  final freeGames = FreeGames();
  final res = await freeGames.get("pt-BR", "BR");
  print(res);
}
