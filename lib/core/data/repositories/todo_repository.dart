import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/core/data/datasource/locale_datasource.dart';
import 'package:flutter_todo_app/core/data/datasource/remote_datasource.dart';
import 'package:flutter_todo_app/core/data/models/todo_model.dart';
import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/core/domain/repositories/todo_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  final RemoteDatasource remoteDatasource;
  final LocalDatasource localeDatasource;

  TodoRepositoryImpl({
    required this.remoteDatasource,
    required this.localeDatasource,
  });

  @override
  Future<void> createTodo(Todo todo) async {
    final _todo = TodoModel.fromEntity(todo);
    await localeDatasource.updateData(_todo);
  }

  @override
  Future<List<Todo>> getTodos() async {
    try {
      final _localTodos = await localeDatasource.getAllData();
      if (_localTodos.isEmpty) {
        final _remoteResponse = await remoteDatasource.getData();
        debugPrint('Raw Data: $_remoteResponse ');
        final _remoteDecoded = json.decode(_remoteResponse);
        debugPrint('Remote Response Decoded: $_remoteDecoded ');

        if (_remoteDecoded is List) {
          final _todoModels = (_remoteDecoded)
              .map((_todo) => TodoModel.fromMap(_todo))
              .toList();

          // Cache todos locally
          await localeDatasource.createMultipleData(_todoModels);

          return _todoModels.map((_todo) => _todo.toEntity()).toList();
        } else {
          log('Remote Response is not a List!!!');
          return [];
        }
      } else {
        return _localTodos.map((_todo) => _todo.toEntity()).toList();
      }
    } catch (e) {
      log("Get Todos failed. Reason: $e");
      return [];
    }
  }
}
