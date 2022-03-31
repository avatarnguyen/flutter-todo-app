part of 'todolist_bloc.dart';

@freezed
class TodolistEvent with _$TodolistEvent {
  const factory TodolistEvent.fetchTodos() = _FetchTodo;
}
