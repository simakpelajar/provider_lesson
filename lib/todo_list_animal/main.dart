import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/todo_list_animal/animals_page.dart';
import 'package:provider_lesson/todo_list_animal/todo_provider.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MaterialApp(
        home:AnimalsPage(),
      ),
    );
  }
}

