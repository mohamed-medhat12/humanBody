import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Immunity_System/immunity_system.dart';

class Quiz_Immunitty extends StatefulWidget {
  const Quiz_Immunitty({super.key});

  @override
  _Quiz_ImmunittyState createState() => _Quiz_ImmunittyState();
}

class _Quiz_ImmunittyState extends State<Quiz_Immunitty> {
  int _questionIndex = 0;
  int _totalScore = 0;
  String? image;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is the primary function of the immune system?',
      'answers': [
        {'text': 'To regulate body temperature', 'score': 0},
        {'text': 'To produce hormones', 'score': 0},
        {
          'text':
              'To protect the body from infectious agents and foreign substances',
          'score': 1
        },
        {'text': 'To transport oxygen to the cells', 'score': 0},
      ],
    },
    {
      'questionText': 'What are the two main types of immunity?',
      'answers': [
        {'text': 'Innate and acquired', 'score': 1},
        {'text': 'Active and passive', 'score': 0},
        {'text': 'Cell-mediated and humoral', 'score': 0},
        {'text': 'T-cell and B-cell', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the role of antibodies in the immune response?',
      'answers': [
        {'text': 'To destroy infected cells', 'score': 0},
        {'text': 'To present antigens to T-cells', 'score': 0},
        {'text': 'To recognize and bind to specific antigens', 'score': 1},
        {'text': 'To stimulate the production of cytokines', 'score': 0},
      ],
    },
    {
      'questionText':
          'What type of cells are responsible for engulfing and digesting foreign substances and cellular debris?',
      'answers': [
        {'text': 'T-cells', 'score': 0},
        {'text': 'B-cells', 'score': 0},
        {'text': 'Macrophages', 'score': 1},
        {'text': 'Natural killer cells', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the specialized cells in the immune system that can recognize and remember specific antigens?',
      'answers': [
        {'text': 'T-cells', 'score': 0},
        {'text': 'B-cells', 'score': 1},
        {'text': 'Macrophages', 'score': 0},
        {'text': ' Dendritic cells', 'score': 0},
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
                      return const ImmunitySystem();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Immunity System Quiz',
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
