import 'package:flutter/material.dart';
import 'package:quiz_app3/view/new_quiz_app_home.dart';

class NewQuizApp extends StatelessWidget {
  const NewQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewQuizAppHome(),
    );
  }
}
