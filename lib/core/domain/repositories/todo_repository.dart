import 'package:flutter_todo_app/core/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getTodos();
  Future<void> createTodo(Todo todo);
}
