part of 'createtodo_cubit.dart';

@freezed
class CreateTodoState with _$CreateTodoState {
  const factory CreateTodoState.current({
    String? title,
    required String id,
    required String userId,
  }) = _Current;
}
