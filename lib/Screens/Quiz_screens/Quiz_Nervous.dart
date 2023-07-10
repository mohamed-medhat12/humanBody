import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/Screens/Nervous_System/Nervous_System.dart';

class Quiz_Nervous extends StatefulWidget {
  const Quiz_Nervous({super.key});

  @override
  _Quiz_NervousState createState() => _Quiz_NervousState();
}

class _Quiz_NervousState extends State<Quiz_Nervous> {
  int _questionIndex = 0;
  int _totalScore = 0;
  String? image;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is the primary function of the nervous system?',
      'answers': [
        {'text': 'To regulate body temperature', 'score': 0},
        {'text': 'To produce hormones', 'score': 0},
        {'text': 'To control and coordinate bodily functions', 'score': 1},
        {'text': 'To transport oxygen to the cells', 'score': 0},
      ],
    },
    {
      'questionText': 'What are the two main divisions of the nervous system?',
      'answers': [
        {'text': 'Somatic and autonomic', 'score': 0},
        {'text': 'Central and peripheral', 'score': 1},
        {'text': 'Sympathetic and parasympathetic', 'score': 0},
        {'text': ' Sensory and motor', 'score': 0},
      ],
    },
    {
      'questionText':
          'What are the basic building blocks of the nervous system?',
      'answers': [
        {'text': 'Hormones', 'score': 0},
        {'text': 'Cells', 'score': 1},
        {'text': 'Muscles', 'score': 0},
        {'text': 'Bones', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the junction between two neurons or between a neuron and a muscle cell?',
      'answers': [
        {'text': 'Axon', 'score': 0},
        {'text': 'Synapse', 'score': 1},
        {'text': 'Myelin sheath', 'score': 0},
        {'text': 'Dendrite', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the division of the nervous system that is responsible for controlling involuntary functions such as heart rate and digestion?',
      'answers': [
        {'text': 'Somatic nervous system', 'score': 0},
        {'text': 'Autonomic nervous system', 'score': 1},
        {'text': 'Sympathetic nervous system', 'score': 0},
        {'text': 'Parasympathetic', 'score': 0},
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
                      return const NervousSystem();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Nervous System Quiz',
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
