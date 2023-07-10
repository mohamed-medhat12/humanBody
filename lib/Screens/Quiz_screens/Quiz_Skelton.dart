import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Skeletal system/skelton_system.dart';

class Quiz_Skelton extends StatefulWidget {
  const Quiz_Skelton({super.key});

  @override
  _Quiz_SkeltonState createState() => _Quiz_SkeltonState();
}

class _Quiz_SkeltonState extends State<Quiz_Skelton> {
  int _questionIndex = 0;
  int _totalScore = 0;
  String? image;

  final List<Map<String, Object>> _questions = [
    {
      'questionText':
          'Which of the following structures provides support and protection to the central axis of the body, including the skull, vertebral column, and rib cage?',
      'answers': [
        {'text': 'Muscles', 'score': 0},
        {'text': 'Digestive system', 'score': 0},
        {'text': 'Nervous system', 'score': 0},
        {'text': 'Skeletal system', 'score': 1},
      ],
    },
    {
      'questionText':
          'Which of the following bones is not part of the axial skeleton?',
      'answers': [
        {'text': 'Skull', 'score': 0},
        {'text': 'Pelvic girdle', 'score': 1},
        {'text': 'Rib cage', 'score': 0},
        {'text': 'Vetebral column', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following is a characteristic of fibrous joints?',
      'answers': [
        {'text': 'They allow for a wide range of movement', 'score': 0},
        {'text': 'They are held together by cartilage', 'score': 0},
        {'text': 'They are immovable', 'score': 1},
        {'text': 'They are found only in the skull', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the primary function of the skeletal system?',
      'answers': [
        {'text': 'To produce hormones', 'score': 0},
        {'text': 'To regulate body temperature', 'score': 0},
        {'text': 'To protect internal organs', 'score': 1},
        {'text': 'To transport oxygen to the cells', 'score': 0},
      ],
    },
    {
      'questionText': 'Which of the following is not a function of the skull?',
      'answers': [
        {'text': 'Protection of the brain', 'score': 0},
        {'text': 'Enclosure of the sense organs', 'score': 0},
        {
          'text': 'Attachment of muscles for head and neck movement',
          'score': 0
        },
        {'text': 'Production of blood cellss', 'score': 1},
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
                      return const Skeletol_System();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Skelton System Quiz',
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
