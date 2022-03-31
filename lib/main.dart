import 'package:flutter/material.dart';
import 'package:flutter_todo_app/features/todo_list/presentation/pages/todo_list_page.dart';
import 'package:flutter_todo_app/injectable.dart' as di;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  await di.InitService.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue.shade800,
        backgroundColor: Colors.grey.shade200,
      ),
      home: const TodoListPage(),
    );
  }
}
