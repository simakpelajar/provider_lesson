import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/game/pages/game_page.dart';
import 'package:provider_lesson/game/provider/game_provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameProvider(),
      child: MaterialApp(home: GamePage()),
    );
  }
}
