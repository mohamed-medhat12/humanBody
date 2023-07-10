import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/Screens/Home.dart';
import 'package:flutter_animate/flutter_animate.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SizedBox(
          width: double.infinity.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Animate(
                effects: const [],
                child: Text(
                  "Hi i'm Mr.neruo",
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontFamily: 'BraahOne',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 290.w,
                child: Text(
                  "Let me take you on a fun and ",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'BraahOne',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 290.w,
                child: Text(
                  "informative journey",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'BraahOne',
                  ),
                ),
              ),
              Image.asset("assets/images/brain (10).png"),
              SizedBox(
                height: 60.h,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Home();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(250.w, 50.h),
                    backgroundColor: const Color(0xffA8FFBF),
                  ),
                  child: Text(
                    "Discover",
                    style: TextStyle(
                        fontSize: 28.sp,
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
