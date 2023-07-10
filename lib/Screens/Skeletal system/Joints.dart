import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Joints extends StatefulWidget {
  const Joints({Key? key}) : super(key: key);

  @override
  State<Joints> createState() => _JointsState();
}

class _JointsState extends State<Joints> {
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
          "Tendos",
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
            child: SizedBox(
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
                        "assets/images/skeletalSystem/skelton/joints.png"))),
          ),
          ItemOrgans(
              asset: "assets/images/skeletalSystem/skelton/Fibrous joints.png",
              title: "Fibrous joints",
              desc:
                  "The function of fibrous joints is to provide stability, limited or no movement, protection, force transmission, rigidity, and shock absorption in the skeletal system."),
          ItemOrgans(
              asset:
                  "assets/images/skeletalSystem/skelton/Cartilaginous joints.png",
              title: "Cartilaginous joints",
              desc:
                  "The function of cartilaginous joints is to provide flexibility, shock absorption, and limited movement between bones."),
          ItemOrgans(
              asset: "assets/images/skeletalSystem/skelton/Synovial joints.png",
              title: "Synovial joints",
              desc:
                  "The function of synovial joints is to provide a wide range of movement, flexibility, and lubrication between bones.")
        ],
      ),
    );
  }
}
