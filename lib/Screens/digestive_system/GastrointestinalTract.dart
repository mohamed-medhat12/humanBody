import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Gastrointestinal extends StatefulWidget {
  const Gastrointestinal({Key? key}) : super(key: key);

  @override
  State<Gastrointestinal> createState() => _GastrointestinalState();
}

class _GastrointestinalState extends State<Gastrointestinal> {
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
          "Gastrointestinal Tract",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black87,
            fontSize: 25.sp,
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
                  height: 190.h,
                  width: 100.h,
                  decoration: const BoxDecoration(
                    color: Color(0xffA8FFBF),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(90),
                        bottomLeft: Radius.circular(90)),
                  ),
                  child: Image.asset("assets/images/dijestive/dijestive.png"))),
          SizedBox(
            height: 10.sp,
          ),
          ItemOrgans(
              asset: "assets/images/dijestive/Esophagus.png",
              title: "Esophagus",
              desc:
                  "The esophagus is a muscular tube that connects the mouth to the stomach. It uses rhythmic contractions to move food down into the stomach."),
          ItemOrgans(
              asset: "assets/images/dijestive/Stomach.png",
              title: "Stomach",
              desc:
                  "The esophagus is a muscular tube that connects the mouth to the stomach. It uses rhythmic contractions to move food down into the stomach."),
          ItemOrgans(
              asset: "assets/images/dijestive/Small intestine.png",
              title: "Small intestine",
              desc:
                  " The small intestine is a long, narrow tube where most of the nutrients from food are absorbed into the bloodstream. It is divided into three parts: the duodenum, jejunum, and ileum."),
          ItemOrgans(
              asset: "assets/images/dijestive/Large intestine.png",
              title: "Large intestine",
              desc:
                  "The large intestine is a wider tube that absorbs water and electrolytes from the remaining food matter, forming feces."),
        ],
      ),
    );
  }
}
