import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/features/todo_list/domain/usecases/get_todos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todolist_event.dart';
part 'todolist_state.dart';
part 'todolist_bloc.freezed.dart';

class TodolistBloc extends Bloc<TodolistEvent, TodolistState> {
  final GetTodos _getTodos;
  TodolistBloc({
    required GetTodos getTodos,
  })  : _getTodos = getTodos,
        super(const _Loading()) {
    on<_FetchTodo>(_onFetchTodo);
  }

  Future<void> _onFetchTodo(
      _FetchTodo event, Emitter<TodolistState> emit) async {
    emit(const TodolistState.loading());

    try {
      final _todos = await _getTodos.call();
      final _unCompletedTodos = _todos
          .where(
            (element) => element.completed == false,
          )
          .toList();
      final _completedTodos = _todos
          .where(
            (element) => element.completed == true,
          )
          .toList();

      emit(TodolistState.loaded(
        unCompleted: _unCompletedTodos,
        completed: _completedTodos,
      ));
    } catch (e) {
      emit(const TodolistState.error());
      log('[TodoListBloc] Error when fetching: $e');
    }
  }
}
