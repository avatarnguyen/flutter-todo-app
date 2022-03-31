import 'dart:developer';

import 'package:flutter_todo_app/core/core.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class RemoteDatasource {
  Future<dynamic> getData();
}

@LazySingleton(as: RemoteDatasource)
class HttpRemoteDatasource implements RemoteDatasource {
  final http.Client client;

  HttpRemoteDatasource(this.client);

  @override
  Future<dynamic> getData() async {
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
