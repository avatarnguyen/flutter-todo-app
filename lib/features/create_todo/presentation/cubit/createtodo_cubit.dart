import 'package:bloc/bloc.dart';
import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/features/create_todo/domain/usecases/create_todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'createtodo_state.dart';
part 'createtodo_cubit.freezed.dart';

class CreateTodoCubit extends Cubit<CreateTodoState> {
  final CreateTodo _createTodo;
  CreateTodoCubit({required CreateTodo createTodo})
      : _createTodo = createTodo,
        super(
          const CreateTodoState.current(
            id: '',
            userId: '',
          ),
        );

  Future<void> submitTodo(Todo todo) async {
    await _createTodo(todo);
  }
}
