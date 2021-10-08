import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/src/ui/utils/colors.dart';
import 'package:quiz_app/src/ui/view/quiz/quiz_viewmodel.dart';

class QuizResultScreen extends StatelessWidget {
  const QuizResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            Text(
              "Quiz Score",
              style: TextStyle(
                color: ThemeColors.orange,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              context.watch<QuizViewModel>().totalScore.toString(),
              style: TextStyle(
                color: ThemeColors.green,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (context.watch<QuizViewModel>().correctAnswers <= 2)
              Text(
                "Sorry, You failed.",
                style: TextStyle(
                  color: ThemeColors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              )
            else if (context.watch<QuizViewModel>().correctAnswers == 3 ||
                context.watch<QuizViewModel>().correctAnswers == 4)
              Text(
                "Well played but you failed. All The Best for Next Game.",
                style: TextStyle(
                  color: ThemeColors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              )
            else if (context.watch<QuizViewModel>().correctAnswers == 5 ||
                context.watch<QuizViewModel>().correctAnswers == 6)
              Text(
                "You Won!",
                style: TextStyle(
                  color: ThemeColors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              )
            else if (context.watch<QuizViewModel>().correctAnswers == 7 ||
                context.watch<QuizViewModel>().correctAnswers == 8)
              Text(
                "You Won! Congratulations.",
                style: TextStyle(
                  color: ThemeColors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              )
            else if (context.watch<QuizViewModel>().correctAnswers == 9)
              Text(
                "You Won! Congratulations and Well Done.",
                style: TextStyle(
                  color: ThemeColors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              )
            else
              Text(
                "Awesome. You are Genius. Congratulations you won the Game.",
                style: TextStyle(
                  color: ThemeColors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              )
          ],
        ),
      ),
    );
  }
}
