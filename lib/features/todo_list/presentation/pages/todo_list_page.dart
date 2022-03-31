import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/features/create_todo/presentation/pages/create_todo_page.dart';
import 'package:flutter_todo_app/features/todo_list/domain/usecases/get_todos.dart';
import 'package:flutter_todo_app/features/todo_list/presentation/bloc/todolist_bloc.dart';
import 'package:flutter_todo_app/features/todo_list/presentation/pages/todo_list_view_body.dart';
import 'package:flutter_todo_app/injectable.dart';

import '../../domain/usecases/update_todo.dart';

const kTodoTabName = "Todos";
const kCompletedTabName = "Completed";

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodolistBloc>(
      create: (_) => TodolistBloc(
        getTodos: getIt.get<GetTodos>(),
        updateTodo: getIt.get<UpdateTodo>(),
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
        return state.maybeWhen(
          loading: () => Container(
            color: theme.backgroundColor,
            child: const SizedBox(
              height: 300,
              width: 300,
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
          orElse: () => Container(
            color: theme.backgroundColor,
            child: const Center(
              child: Text('Etwas ist schief gelaufen'),
            ),
          ),
          loaded: (unCompleted, completed) {
            return DefaultTabController(
              length: _views.length,
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CreateTodoPage(),
                    ));
                    context.read<TodolistBloc>().add(
                          const TodolistEvent.fetchTodos(),
                        );
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
                          pinned: true,
                          title: Text(
                            'Awesome Todo App',
                            style: TextStyle(
                              color: theme.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          bottom: TabBar(
                            labelColor: theme.primaryColor,
                            tabs: [
                              Tab(text: 'Todos (${unCompleted.length})'),
                              Tab(text: 'Completed (${completed.length})'),
                            ],
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: _views
                        .map(
                          (title) => SafeArea(
                            top: false,
                            bottom: false,
                            child: Builder(
                              builder: (context) {
                                final _todos = (title == kTodoTabName)
                                    ? unCompleted
                                    : completed;
                                return TodoListViewBody(
                                  todos: _todos,
                                  title: title,
                                );
                              },
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
