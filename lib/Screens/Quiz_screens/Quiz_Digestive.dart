import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../digestive_system/digestive_system.dart';

class Quiz_Digestive extends StatefulWidget {
  const Quiz_Digestive({super.key});

  @override
  _Quiz_DigestiveState createState() => _Quiz_DigestiveState();
}

class _Quiz_DigestiveState extends State<Quiz_Digestive> {
  int _questionIndex = 0;
  int _totalScore = 0;
  String? image;

  final List<Map<String, Object>> _questions = [
    {
      'questionText':
          'What is the function of the small intestine in the digestive system?',
      'answers': [
        {'text': 'To absorb nutrients from food', 'score': 1},
        {'text': 'To store waste products', 'score': 0},
        {'text': 'To produce digestive enzymes', 'score': 0},
        {'text': 'To break down food into smaller pieces', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which organ produces and stores bile in the digestive system?',
      'answers': [
        {'text': 'The stomach', 'score': 0},
        {'text': 'The pancreas', 'score': 0},
        {'text': 'The liver', 'score': 1},
        {'text': 'The gallbladder', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the primary function of the large intestine in the digestive system?',
      'answers': [
        {
          'text':
              'To absorb water and electrolytes from the remaining food matter',
          'score': 1
        },
        {'text': 'To produce digestive enzymes', 'score': 0},
        {'text': 'To break down carbohydrates', 'score': 0},
        {'text': 'To mix and grind food with stomach acid', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the role of saliva in the digestive system?',
      'answers': [
        {'text': 'To absorb nutrients from food', 'score': 0},
        {'text': 'To break down fats', 'score': 0},
        {'text': 'To break down carbohydrates', 'score': 0},
        {'text': 'To lubricate food and aid in swallowing', 'score': 1},
      ],
    },
    {
      'questionText':
          'What is the function of the esophagus in the digestive system?',
      'answers': [
        {'text': 'To produce digestive enzymes', 'score': 0},
        {'text': 'To absorb nutrients from food', 'score': 0},
        {'text': 'To transport food from the mouth to the stomach', 'score': 1},
        {'text': 'To store waste products before elimination', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const digestive_system();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Digestive System Quiz',
            style: TextStyle(fontSize: 22.sp),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffF27674),
        ),
        body: _questionIndex < _questions.length
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0.h),
                      child: Text(
                        _questions[_questionIndex]['questionText'].toString(),
                        style: TextStyle(fontSize: 20.0.sp),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ...(_questions[_questionIndex]['answers']
                            as List<Map<String, Object>>)
                        .map((answer) => AnswerButton(
                              answerText: answer['text'].toString(),
                              onPressed: () => _answerQuestion(
                                  int.parse(answer['score'].toString())),
                            ))
                        .toList(),
                    Image.asset(
                      "assets/images/brain (8).png",
                      scale: 2,
                    )
                  ],
                ),
              )
            : SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'You have completed the quiz!',
                      style:
                          TextStyle(fontSize: 20.0.sp, fontFamily: 'BraahOne'),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Your total score is $_totalScore',
                      style:
                          TextStyle(fontSize: 18.0.sp, fontFamily: 'BraahOne'),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      _totalScore < 3
                          ? "assets/images/brain (13).png"
                          : "assets/images/brain (2).png",
                      scale: 1.5,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _resetQuiz();
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200.w, 50.h),
                          backgroundColor: const Color(0xffA8FFBF),
                        ),
                        child: Text(
                          "Restart Quiz",
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  final String? answerText;
  final VoidCallback? onPressed;

  const AnswerButton({Key? key, this.answerText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.0.w),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(250.w, 50.h),
          backgroundColor: const Color(0xffA8FFBF),
        ),
        onPressed: onPressed,
        child: Text(
          answerText!,
          style: TextStyle(color: Colors.black, fontSize: 18.sp),
        ),
      ),
    );
  }
}
