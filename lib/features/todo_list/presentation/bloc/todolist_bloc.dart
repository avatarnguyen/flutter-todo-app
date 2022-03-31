import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/features/todo_list/domain/usecases/get_todos.dart';
import 'package:flutter_todo_app/features/todo_list/domain/usecases/update_todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todolist_event.dart';
part 'todolist_state.dart';
part 'todolist_bloc.freezed.dart';

class TodolistBloc extends Bloc<TodolistEvent, TodolistState> {
  final GetTodos _getTodos;
  final UpdateTodo _updateTodo;
  TodolistBloc({
    required UpdateTodo updateTodo,
    required GetTodos getTodos,
  })  : _getTodos = getTodos,
        _updateTodo = updateTodo,
        super(const _Loading()) {
    on<_FetchTodo>(_onFetchTodo);
    on<_UpdateTodo>(_onUpdateTodo);
  }

  Future<void> _onFetchTodo(
      _FetchTodo event, Emitter<TodolistState> emit) async {
    emit(const TodolistState.loading());
    await _loadTodos(emit);
  }

  Future<FutureOr<void>> _onUpdateTodo(
      _UpdateTodo event, Emitter<TodolistState> emit) async {
    await _updateTodo(event.todo);
    await _loadTodos(emit);
  }

  Future<void> _loadTodos(Emitter<TodolistState> emit) async {
    try {
      final _todos = await _getTodos.call();
      final _now = DateTime.now();
      final _unCompletedTodos = _todos
          .where(
            (element) => element.completed == false,
          )
          .toList();
      _unCompletedTodos
          .sort((a, b) => (a.created ?? _now).compareTo(b.created ?? _now));
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
