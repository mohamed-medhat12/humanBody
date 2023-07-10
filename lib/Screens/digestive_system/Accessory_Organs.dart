import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Accessory_Organs extends StatefulWidget {
  const Accessory_Organs({Key? key}) : super(key: key);

  @override
  State<Accessory_Organs> createState() => _Accessory_OrgansState();
}

class _Accessory_OrgansState extends State<Accessory_Organs> {
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
          "Accessory Organs",
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
                      "assets/images/dijestive/Accessory Organs.png"))),
          ItemOrgans(
              asset: "assets/images/dijestive/Gallbladder.png",
              title: "Gallbladder",
              desc:
                  "The gallbladder is a small, pear-shaped organ located beneath the liver in the digestive system. Its main function is to store and concentrate bile, a digestive fluid produced by the liver."),
          ItemOrgans(
              asset: "assets/images/dijestive/Pancreas.png",
              title: "Pancreas",
              desc:
                  "The pancreas produces digestive enzymes that break down carbohydrates, proteins, and fats in the small intestine.")
        ],
      ),
    );
  }
}
