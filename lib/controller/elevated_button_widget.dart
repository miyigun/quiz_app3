import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app3/model/question_and_answer_model.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key, required this.answer});

  final String answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      /// when you pass false to the listen parameter
      /// like Provider.of<T>(context,listen: false) it will behave similar to read

      onPressed: () =>
          // context.read<QuestionAndAnswerModel>().incrementCounter(),
          Provider.of<QuestionAndAnswerModel>(context, listen: false)
              .incrementCounter(),
      child: Text(
        answer,
        style: const TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
