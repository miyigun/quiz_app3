import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app3/model/question_and_answer_model.dart';
import 'package:quiz_app3/view/new_quiz_app.dart';

void main() {
  // runApp(HowFlutterUsesDartApp());
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuestionAndAnswerModel()),
      ],
      child: const NewQuizApp(),
    ),
  );
}
