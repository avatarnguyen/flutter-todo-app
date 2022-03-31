import 'package:flutter/material.dart';
import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/features/todo_list/presentation/widgets/todo_item_widget.dart';

class TodoListViewBody extends StatelessWidget {
  const TodoListViewBody({
    Key? key,
    required List<Todo> todos,
    required this.title,
  })  : _todos = todos,
        super(key: key);

  final List<Todo> _todos;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: PageStorageKey<String>(title),
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final _todoItem = _todos[index];
                return TodoItemWidget(
                  key: Key("$index ${_todoItem.id}"),
                  todo: _todoItem,
                );
              },
              childCount: _todos.length,
            ),
          ),
        ),
      ],
    );
  }
}
