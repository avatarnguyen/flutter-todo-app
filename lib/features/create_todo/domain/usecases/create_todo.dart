import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/core/domain/repositories/todo_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateTodo {
  final TodoRepository repository;

  CreateTodo(this.repository);

  Future<void> call(Todo todo) async {
    return await repository.createTodo(todo);
  }
}
