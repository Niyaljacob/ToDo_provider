import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/model/save_task.dart';
import 'package:todo_provider/view/add_todo.dart';
import 'package:todo_provider/view/todolist.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SaveTask(),
    child: const MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/':(_)=> const TodoList(),
        '/add-todo-screen':(_)=>AddTodo(), 
      },
    );
  }
}

