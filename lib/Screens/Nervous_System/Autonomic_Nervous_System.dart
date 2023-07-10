import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';

class Autonomic_System extends StatefulWidget {
  const Autonomic_System({super.key});

  @override
  State<Autonomic_System> createState() => _Autonomic_System();
}

class _Autonomic_System extends State<Autonomic_System> {
  double screenWidth = 0;

  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      //backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffA8FFBF),
        elevation: 0,
        title: Text(
          "Autonomic Nervous",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black87,
            fontSize: 26.sp,
          ),
        ),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 260.h,
            child: Container(
                padding: const EdgeInsets.all(30),
                height: 190.h,
                width: 100.h,
                decoration: const BoxDecoration(
                  color: Color(0xffA8FFBF),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(90),
                      bottomLeft: Radius.circular(90)),
                ),
                child: Image.asset("assets/images/Nervous System.jpg")),
          ),
          SizedBox(
            height: 15.h,
          ),
          ItemOrgans(
            asset: "assets/images/Somatic Nervous System.jpg",
            title: "Sympathetic Nervous System",
            desc:
                "The sympathetic division mobilizes the body's fight or flight response, preparing it for emergencies. It increases heart rate, dilates blood vessels, and activates various physiological responses.",
          ),
          ItemOrgans(
              asset: 'assets/images/Somatic Nervous System.jpg',
              title: "Parasympathetic Nervous System",
              desc:
                  "The parasympathetic division promotes the body's rest and digest response, conserving energy and promoting relaxation. It decreases heart rate, constricts blood vessels, and facilitates digestion and other restorative processes."),
        ],
      ),
    );
  }
}
