import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/itemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Macrophages extends StatefulWidget {
  const Macrophages({Key? key}) : super(key: key);

  @override
  State<Macrophages> createState() => _MacrophagesState();
}

class _MacrophagesState extends State<Macrophages> {
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
        title: const Text(
          "Macrophages",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black87,
            fontSize: 30,
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
                  child: Image.asset(
                      "assets/images/immunity/Macrophages/MacrophagesBackground.png"))),
          ItemOrgans(
              asset: "assets/images/immunity/Macrophages/fixed Macrophages.png",
              title: "Fixed Macrophages",
              desc:
                  "Fixed macrophages, also known as tissue-resident macrophages, are specialized immune cells that are strategically located in specific tissues, where they contribute to immune surveillance, phagocytosis, tissue remodeling, and maintenance of homeostasis."),
          ItemOrgans(
              asset:
                  "assets/images/immunity/Macrophages/mobile-removebg-preview.png",
              title: "Mobile Macrophages",
              desc:
                  "Mobile macrophages, also called wandering macrophages, are immune cells capable of actively migrating throughout the body, where they perform tasks such as phagocytosis, antigen presentation, pathogen elimination, and modulation of immune responses.")
        ],
      ),
    );
  }
}
