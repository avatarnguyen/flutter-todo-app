import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todolist_event.dart';
part 'todolist_state.dart';

class TodolistBloc extends Bloc<TodolistEvent, TodolistState> {
  TodolistBloc() : super(TodolistInitial()) {
    on<TodolistEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
