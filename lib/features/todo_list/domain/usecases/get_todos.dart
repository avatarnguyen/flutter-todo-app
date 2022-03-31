import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/core/domain/repositories/todo_repository.dart';

class GetTodos {
  final TodoRepository repository;

  GetTodos(this.repository);

  Future<List<Todo>> call() async {
    return await repository.getTodos();
  }
}
