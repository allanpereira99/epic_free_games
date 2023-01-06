// SPDX-License-Identifier: MIT
// Copyright (c) 2023 Allan Pereira <https://github.com/allanpereira99>

import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class IHttpService {
  Future get({params});
}

class HttpService implements IHttpService {
  final http.Client httpCliente = http.Client();
  @override
  Future get({params}) async {
    final url = Uri.parse(params["url"]);
    final response = await httpCliente
        .get(url, headers: params["headers"])
        .then((response) => jsonDecode(response.body));

    return response;
  }
}
