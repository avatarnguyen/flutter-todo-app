part of 'todolist_bloc.dart';

@freezed
class TodolistState with _$TodolistState {
  const factory TodolistState.loading() = _Loading;
  const factory TodolistState.loaded({
    required List<Todo> unCompleted,
    required List<Todo> completed,
  }) = _Loaded;
  const factory TodolistState.error() = _Error;
}
