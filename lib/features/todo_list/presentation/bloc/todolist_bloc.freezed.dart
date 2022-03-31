// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todolist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodolistEventTearOff {
  const _$TodolistEventTearOff();

  _FetchTodo fetchTodos() {
    return const _FetchTodo();
  }

  _UpdateTodo updateTodo({required Todo todo}) {
    return _UpdateTodo(
      todo: todo,
    );
  }
}

/// @nodoc
const $TodolistEvent = _$TodolistEventTearOff();

/// @nodoc
mixin _$TodolistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodos,
    required TResult Function(Todo todo) updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTodos,
    TResult Function(Todo todo)? updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodos,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodo value) fetchTodos,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTodo value)? fetchTodos,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodo value)? fetchTodos,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodolistEventCopyWith<$Res> {
  factory $TodolistEventCopyWith(
          TodolistEvent value, $Res Function(TodolistEvent) then) =
      _$TodolistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodolistEventCopyWithImpl<$Res>
    implements $TodolistEventCopyWith<$Res> {
  _$TodolistEventCopyWithImpl(this._value, this._then);

  final TodolistEvent _value;
  // ignore: unused_field
  final $Res Function(TodolistEvent) _then;
}

/// @nodoc
abstract class _$FetchTodoCopyWith<$Res> {
  factory _$FetchTodoCopyWith(
          _FetchTodo value, $Res Function(_FetchTodo) then) =
      __$FetchTodoCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchTodoCopyWithImpl<$Res> extends _$TodolistEventCopyWithImpl<$Res>
    implements _$FetchTodoCopyWith<$Res> {
  __$FetchTodoCopyWithImpl(_FetchTodo _value, $Res Function(_FetchTodo) _then)
      : super(_value, (v) => _then(v as _FetchTodo));

  @override
  _FetchTodo get _value => super._value as _FetchTodo;
}

/// @nodoc

class _$_FetchTodo implements _FetchTodo {
  const _$_FetchTodo();

  @override
  String toString() {
    return 'TodolistEvent.fetchTodos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchTodo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodos,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return fetchTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTodos,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return fetchTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodos,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodo value) fetchTodos,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return fetchTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTodo value)? fetchTodos,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return fetchTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodo value)? fetchTodos,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos(this);
    }
    return orElse();
  }
}

abstract class _FetchTodo implements TodolistEvent {
  const factory _FetchTodo() = _$_FetchTodo;
}

/// @nodoc
abstract class _$UpdateTodoCopyWith<$Res> {
  factory _$UpdateTodoCopyWith(
          _UpdateTodo value, $Res Function(_UpdateTodo) then) =
      __$UpdateTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class __$UpdateTodoCopyWithImpl<$Res> extends _$TodolistEventCopyWithImpl<$Res>
    implements _$UpdateTodoCopyWith<$Res> {
  __$UpdateTodoCopyWithImpl(
      _UpdateTodo _value, $Res Function(_UpdateTodo) _then)
      : super(_value, (v) => _then(v as _UpdateTodo));

  @override
  _UpdateTodo get _value => super._value as _UpdateTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_UpdateTodo(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_UpdateTodo implements _UpdateTodo {
  const _$_UpdateTodo({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodolistEvent.updateTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      __$UpdateTodoCopyWithImpl<_UpdateTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodos,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return updateTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTodos,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return updateTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodos,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodo value) fetchTodos,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTodo value)? fetchTodos,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodo value)? fetchTodos,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodo implements TodolistEvent {
  const factory _UpdateTodo({required Todo todo}) = _$_UpdateTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodolistStateTearOff {
  const _$TodolistStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required List<Todo> unCompleted, required List<Todo> completed}) {
    return _Loaded(
      unCompleted: unCompleted,
      completed: completed,
    );
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $TodolistState = _$TodolistStateTearOff();

/// @nodoc
mixin _$TodolistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> unCompleted, List<Todo> completed)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodolistStateCopyWith<$Res> {
  factory $TodolistStateCopyWith(
          TodolistState value, $Res Function(TodolistState) then) =
      _$TodolistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodolistStateCopyWithImpl<$Res>
    implements $TodolistStateCopyWith<$Res> {
  _$TodolistStateCopyWithImpl(this._value, this._then);

  final TodolistState _value;
  // ignore: unused_field
  final $Res Function(TodolistState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TodolistStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TodolistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> unCompleted, List<Todo> completed)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodolistState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Todo> unCompleted, List<Todo> completed});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$TodolistStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? unCompleted = freezed,
    Object? completed = freezed,
  }) {
    return _then(_Loaded(
      unCompleted: unCompleted == freezed
          ? _value.unCompleted
          : unCompleted // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.unCompleted, required this.completed});

  @override
  final List<Todo> unCompleted;
  @override
  final List<Todo> completed;

  @override
  String toString() {
    return 'TodolistState.loaded(unCompleted: $unCompleted, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality()
                .equals(other.unCompleted, unCompleted) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unCompleted),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> unCompleted, List<Todo> completed)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(unCompleted, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(unCompleted, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(unCompleted, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TodolistState {
  const factory _Loaded(
      {required List<Todo> unCompleted,
      required List<Todo> completed}) = _$_Loaded;

  List<Todo> get unCompleted;
  List<Todo> get completed;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TodolistStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'TodolistState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> unCompleted, List<Todo> completed)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> unCompleted, List<Todo> completed)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodolistState {
  const factory _Error() = _$_Error;
}
