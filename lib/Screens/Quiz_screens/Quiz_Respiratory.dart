import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Respiratory_System/Respiratory_System.dart';

class Quiz_Respiratory extends StatefulWidget {
  const Quiz_Respiratory({super.key});

  @override
  _Quiz_RespiratoryState createState() => _Quiz_RespiratoryState();
}

class _Quiz_RespiratoryState extends State<Quiz_Respiratory> {
  int _questionIndex = 0;
  int _totalScore = 0;
  String? image;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is the primary function of the respiratory system?',
      'answers': [
        {'text': 'To regulate body temperature', 'score': 0},
        {'text': 'To produce hormones', 'score': 0},
        {'text': 'To protect internal organs', 'score': 0},
        {'text': 'To exchange gases with the body\'s environment', 'score': 1},
      ],
    },
    {
      'questionText': 'What are the two main parts of the respiratory system?',
      'answers': [
        {'text': 'Upper and lower respiratory tracts', 'score': 1},
        {'text': 'Left and right lungs', 'score': 0},
        {'text': 'Red and white blood cells', 'score': 0},
        {'text': 'Nasal cavity and pharynx', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the process by which oxygen and carbon dioxide are exchanged in the lungs?',
      'answers': [
        {'text': 'Osmosis', 'score': 0},
        {'text': 'Diffusion', 'score': 1},
        {'text': 'Active transport', 'score': 0},
        {'text': 'Facilitated transport', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the structure in the upper respiratory tract that filters, warms, and humidifies incoming air?',
      'answers': [
        {'text': 'Larynx', 'score': 0},
        {'text': 'Pharynx', 'score': 0},
        {'text': 'Bronchioles', 'score': 0},
        {'text': 'Nasal cavity', 'score': 1},
      ],
    },
    {
      'questionText': 'What is the primary gas exchanged during respiration?',
      'answers': [
        {'text': 'Carbon monoxide', 'score': 0},
        {'text': 'Nitrogen', 'score': 0},
        {'text': 'Oxygen', 'score': 1},
        {'text': 'Methane', 'score': 0},
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
                      return const Respiratory_System();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Respiratory System Quiz',
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
