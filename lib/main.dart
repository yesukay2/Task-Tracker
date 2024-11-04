import 'package:flutter/material.dart';
import 'package:todo/screens/todo.dart';
import 'package:todo/Utils/colors.dart';

void main() {
  Todo();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Todo(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
