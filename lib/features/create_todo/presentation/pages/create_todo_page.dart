import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:flutter_todo_app/features/create_todo/domain/usecases/create_todo.dart';
import 'package:flutter_todo_app/features/create_todo/presentation/cubit/createtodo_cubit.dart';
import 'package:flutter_todo_app/injectable.dart';

class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => CreateTodoCubit(
        createTodo: getIt<CreateTodo>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Awesome Todo'),
        ),
        backgroundColor: theme.backgroundColor,
        body: const CreateTodoView(),
      ),
    );
  }
}

class CreateTodoView extends StatefulWidget {
  const CreateTodoView({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateTodoView> createState() => _CreateTodoViewState();
}

class _CreateTodoViewState extends State<CreateTodoView> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
            style: const TextStyle(fontSize: 24.0),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Neues Todo erstellen',
            ),
            onChanged: (text) {},
            autofocus: true,
            onSubmitted: (text) {
              final _today = DateTime.now();
              final _todo = Todo(
                id: _today.millisecond + _today.microsecond,
                userId: 1234,
                completed: false,
                title: text,
                created: _today,
              );
              context.read<CreateTodoCubit>().submitTodo(_todo);
              controller.text = '';

              const snackBar = SnackBar(
                content: Text(
                    'Yay! Deine Neues Todo wurde erfolgreich erstellt! Tippe auf das Feld um weitere Todo zu erstellen'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          )
        ],
      ),
    );
  }
}
