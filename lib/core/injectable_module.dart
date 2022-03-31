import 'package:flutter_todo_app/core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

@module
abstract class RegisterModule {
  @lazySingleton
  http.Client httpClient() => http.Client();
  @preResolve
  Future<Box<String>> get todoBox => Hive.openBox(kLocalStorageName);
}
