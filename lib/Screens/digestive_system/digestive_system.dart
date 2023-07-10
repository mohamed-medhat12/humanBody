import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemSystem.dart';

import '../../videos.dart';
import '../Home.dart';
import '../Quiz_screens/Quiz_Digestive.dart';
import 'Accessory_Organs.dart';
import 'GastrointestinalTract.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class digestive_system extends StatefulWidget {
  const digestive_system({Key? key}) : super(key: key);

  @override
  State<digestive_system> createState() => _digestive_systemState();
}

class _digestive_systemState extends State<digestive_system> {
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
          "Digestive system",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black87,
            fontSize: 30,
          ),
        ),
        leading: IconButton(
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
          icon: const Icon(Icons.arrow_back),
        ),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 260.h,
            child: Container(
              height: 260.h,
              width: 100.h,
              decoration: const BoxDecoration(
                  color: Color(0xffA8FFBF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90))),
              child: Image.asset(
                  "assets/images/dijestive/Gastrointestinal_System-removebg-preview.png"),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const ItemSystem(
            asset: "assets/images/dijestive/dijestive.png",
            title: "Gastrointestinal Tract",
            desc:
                "This is a long muscular tube that extends from the mouth to the anus. It includes the following organs: Mouth: The mouth is where digestion begins. It contains the teeth, tongue, and salivary glands, which together break down food into smaller pieces and mix it with saliva, which contains enzymes that start the process of breaking down carbohydrates.",
            menu: Gastrointestinal(),
          ),
          const ItemSystem(
            asset: "assets/images/dijestive/Accessory Organs.png",
            title: "Accessory Organs",
            desc:
                "These are organs that aid in the digestion process, butfood does not pass through them. They include: Liver: The liver produces bile, which helps to break down fats in the small intestine.",
            menu: Accessory_Organs(),
          ),
         SizedBox(
            height: 15.h,
          ),

          const AddVideo(youtubeUrl: "https://youtu.be/qF6TBRaE2_A"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Quiz_Digestive();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100.w, 50.h),
                  backgroundColor: const Color(0xffA8FFBF),
                ),
                child: Text(
                  "Take Quiz",
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
