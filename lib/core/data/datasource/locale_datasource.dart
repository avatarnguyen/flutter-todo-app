import 'package:flutter_todo_app/core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class LocalDatasource {
  Future<List<TodoModel>> getAllData();
  Future<void> updateData(TodoModel todo);
  Future<void> createMultipleData(List<TodoModel> todos);
}

@LazySingleton(as: LocalDatasource)
class HiveLocalDatasource implements LocalDatasource {
  final Box<String> todoHiveBox;

  HiveLocalDatasource(this.todoHiveBox);

  @override
  Future<List<TodoModel>> getAllData() async {
    final _todos = <TodoModel>[];
    for (int i = 0; i < todoHiveBox.length; i++) {
      final _todo = todoHiveBox.getAt(i);
      if (_todo != null) {
        _todos.add(TodoModel.fromJson(_todo));
      }
    }
    return _todos;
  }

  @override
  Future<void> updateData(TodoModel todo) async {
    return await todoHiveBox.put(todo.id, todo.toJson());
  }

  @override
  Future<void> createMultipleData(List<TodoModel> todos) async {
    await Future.wait(
      todos.map(
        (_todo) async => await todoHiveBox.put(
          _todo.id,
          _todo.toJson(),
        ),
      ),
    );
  }
}
