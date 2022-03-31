import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/features/todo_list/domain/usecases/get_todos.dart';
import 'package:flutter_todo_app/features/todo_list/presentation/bloc/todolist_bloc.dart';
import 'package:flutter_todo_app/features/todo_list/presentation/widgets/todo_item_widget.dart';
import 'package:flutter_todo_app/injectable.dart';

const kTodoTabName = "Todos";
const kCompletedTabName = "Completed";

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodolistBloc(
        getTodos: getIt.get<GetTodos>(),
      )..add(const TodolistEvent.fetchTodos()),
      child: const TodoListView(),
    );
  }
}

class TodoListView extends StatelessWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final _views = <String>[kTodoTabName, kCompletedTabName];

    return BlocBuilder<TodolistBloc, TodolistState>(
      builder: (context, state) {
        return DefaultTabController(
          length: _views.length,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                log('create new todo');
              },
              child: const Icon(Icons.add),
            ),
            backgroundColor: theme.backgroundColor,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverAppBar(
                      backgroundColor: theme.backgroundColor,
                      stretch: true,
                      expandedHeight: 160,
                      title: const Text('Todos Today'),
                      // leading: const SizedBox(width: 0),
                      bottom: const TabBar(tabs: [
                        Tab(text: 'Todos'),
                        Tab(text: 'Completed'),
                      ]),
                    ),
                  ),
                ];
              },
              body: BlocBuilder<TodolistBloc, TodolistState>(
                  builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const SizedBox(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  ),
                  orElse: () => const SizedBox(
                    child: Center(
                      child: Text('Etwas ist schief gelaufen'),
                    ),
                  ),
                  loaded: (unCompleted, completed) {
                    return TabBarView(
                      children: _views
                          .map((title) => SafeArea(
                                top: false,
                                bottom: false,
                                child: Builder(builder: (BuildContext context) {
                                  final _todos = (title == kTodoTabName)
                                      ? unCompleted
                                      : completed;
                                  return TodoListViewContent(
                                    title: title,
                                    todos: _todos,
                                  );
                                }),
                              ))
                          .toList(),
                    );
                  },
                );
              }),
            ),
          ),
        );
      },
    );
  }
}

class TodoListViewContent extends StatelessWidget {
  const TodoListViewContent({
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
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final _todoItem = _todos[index];
              return TodoItemWidget(
                key: Key("$index ${_todoItem.id}"),
                isCompleted: _todoItem.completed,
                title: _todoItem.title ?? '',
              );
            },
            childCount: _todos.length,
          ),
        ),
      ],
    );
  }
}
