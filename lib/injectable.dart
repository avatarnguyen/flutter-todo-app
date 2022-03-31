import 'dart:developer';

import 'package:flutter_todo_app/core/data/datasource/locale_datasource.dart';
import 'package:flutter_todo_app/core/data/datasource/remote_datasource.dart';
import 'package:flutter_todo_app/core/data/repositories/todo_repository.dart';
import 'package:flutter_todo_app/core/domain/repositories/todo_repository.dart';
import 'package:flutter_todo_app/features/create_todo/domain/usecases/create_todo.dart';
import 'package:flutter_todo_app/features/todo_list/domain/usecases/get_todos.dart';
import 'package:flutter_todo_app/features/todo_list/domain/usecases/update_todo.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/constants/app_settings.dart';
import 'core/data/models/todo_model.dart';

final getIt = GetIt.instance;

class InitService {
  static Future<void> setup() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TodoModelAdapter());
    final _todoBox = await Hive.openBox<TodoModel>(kLocalStorageName);

    getIt.registerLazySingleton<RemoteDatasource>(
      () => HttpRemoteDatasource(),
    );

    getIt.registerLazySingleton<LocalDatasource>(
        () => HiveLocalDatasource(_todoBox));
    getIt.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl(
          localeDatasource: getIt.get<LocalDatasource>(),
          remoteDatasource: getIt.get<RemoteDatasource>(),
        ));

    getIt.registerLazySingleton<CreateTodo>(
      () => CreateTodo(getIt.get<TodoRepository>()),
    );
    getIt.registerLazySingleton<GetTodos>(
      () => GetTodos(getIt.get<TodoRepository>()),
    );
    getIt.registerLazySingleton<UpdateTodo>(
      () => UpdateTodo(getIt.get<TodoRepository>()),
    );
  }
}
