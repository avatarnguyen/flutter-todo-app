import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/core/styles/style_constants.dart';
import 'package:flutter_todo_app/features/todo_list/presentation/bloc/todolist_bloc.dart';

import '../../../../core/domain/entities/todo.dart';

class TodoItemWidget extends StatefulWidget {
  const TodoItemWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  State<TodoItemWidget> createState() => _TodoItemWidgetState();
}

class _TodoItemWidgetState extends State<TodoItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation dismissAnimation;
  bool _isCompleted = false;

  @override
  void initState() {
    super.initState();
    _isCompleted = widget.todo.completed;
    controller = AnimationController(
      duration: const Duration(milliseconds: 320),
      vsync: this,
    );
    dismissAnimation = Tween<double>(begin: 56.0, end: 0.0).animate(controller);
    controller.addListener(_updateView);
  }

  @override
  void dispose() {
    controller.removeListener(_updateView);
    super.dispose();
  }

  void _updateView() {
    if (controller.isCompleted) {
      final _newTodo = widget.todo.copyWith(
        completed: _isCompleted,
      );
      context.read<TodolistBloc>().add(
            TodolistEvent.updateTodo(
              todo: _newTodo,
            ),
          );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: dismissAnimation.value <= 2.0 ? 0 : 8, horizontal: 4),
      child: Container(
        padding: const EdgeInsets.only(right: 4.0),
        height: dismissAnimation.value,
        decoration: const BoxDecoration(
          boxShadow: kShadowCardLight,
          borderRadius: kBorderRadiusItem,
          color: Colors.white,
        ),
        child: dismissAnimation.value < 30.0
            ? const SizedBox.shrink()
            : Row(
                children: [
                  Checkbox(
                    value: _isCompleted,
                    onChanged: (value) {
                      _isCompleted = !_isCompleted;

                      controller.forward();
                    },
                  ),
                  Flexible(
                    child: Text(
                      widget.todo.title ?? '',
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
