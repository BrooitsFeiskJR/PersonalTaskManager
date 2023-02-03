import 'package:flutter/material.dart';
import 'package:personal_task_manager/features/projects/projects._screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Project(),
    );
  }
}
