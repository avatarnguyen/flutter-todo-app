import 'dart:developer';

import 'package:flutter_todo_app/core/core.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDatasource {
  Future<dynamic> getData();
}

class HttpRemoteDatasource implements RemoteDatasource {
  HttpRemoteDatasource();

  @override
  Future<dynamic> getData() async {
    final client = http.Client();
    try {
      final _response = await client.get(Uri.parse(kTodoUrl));
      if (_response.statusCode == 200) {
        return _response.body;
      } else {
        return null;
      }
    } catch (e) {
      log("Error occurred at GET Request. Message: $e");
      rethrow;
    }
  }
}
