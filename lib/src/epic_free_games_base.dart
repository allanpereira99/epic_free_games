// SPDX-License-Identifier: MIT
// Copyright (c) 2023 Allan Pereira <https://github.com/allanpereira99>

import 'repositories/http_interface.dart';

//INSTANCE OF HTTP SERVICE
final IHttpService _service = HttpService();

class FreeGames {
  Future get(locale, country) async {
    // CONFIG REQUEST
    final Map<Object, Object> configs = {
      "url":
          'https://store-site-backend-static-ipv4.ak.epicgames.com/freeGamesPromotions?locale=$locale&country=$country&allowCountries=$country',
      "headers": {
        "origin": 'https://store.epicgames.com',
        "referer": 'https://store.epicgames.com/pt-BR/free-games',
        "sec-fetch-des": 'empty',
        "sec-fetch-mode": 'cors',
        "sec-fetch-site": 'same-site',
        "user-agent":
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52',
        "Content-Type": 'application/json',
      }
    };
    // REQUEST
    final response = await _service.get(params: configs);
    final data = response['data'];
    return data;
  }
}
