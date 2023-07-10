import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/Screens/Respiratory_System/Respiratory_System.dart';
import 'package:humanbody/Screens/Skeletal%20system/skelton_system.dart';
import 'package:humanbody/Screens/digestive_system/digestive_system.dart';
import 'package:humanbody/element/itemHome.dart';

import 'Immunity_System/immunity_system.dart';
import 'Nervous_System/Nervous_System.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity.w,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200.r),
                      bottomRight: Radius.circular(200.r)),
                  shape: BoxShape.rectangle,
                  color: const Color(0xffA8FFBF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Let's explore our inner system",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: 'BraahOne',
                      ),
                    ),
                    Image.asset(
                      "assets/images/brain (15).png",
                      scale: 1.8,
                    ),
                  ],
                ),
              ),
              const Column(
                children: [
                  item(
                      image: "assets/images/skull.png",
                      text: "Skelton System",
                      Screen: Skeletol_System()),
                  item(
                      image: "assets/images/stomach.png",
                      text: "Digestive System",
                      Screen: digestive_system()),
                  item(
                      image: "assets/images/lymph.png",
                      text: "Immunity System",
                      Screen: ImmunitySystem()),
                  item(
                      image: "assets/images/lung.png",
                      text: "Respiratory \n    System",
                      Screen: Respiratory_System()),
                  item(
                      image: "assets/images/brain logo.png",
                      text: "Nervous System",
                      Screen: NervousSystem()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
