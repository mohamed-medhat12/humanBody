import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';

class AppendicularSkeleton extends StatefulWidget {
  const AppendicularSkeleton({Key? key}) : super(key: key);

  @override
  State<AppendicularSkeleton> createState() => _AppendicularSkeletonState();
}

class _AppendicularSkeletonState extends State<AppendicularSkeleton> {
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
          "Appendicular Skeleton",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black87,
            fontSize: 20,
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
                    "assets/images/skeletalSystem/skeletalSystem-removebg-preview.png")),
          ),
          SizedBox(
            height: 10.h,
          ),
          ItemOrgans(
              asset: "assets/images/skeletalSystem/skelton/Upper Limbs.jpg",
              title: "Upper Limbs",
              desc:
                  "Facilitates various movements and actions of the arms and hands."),
          ItemOrgans(
              asset: "assets/images/skeletalSystem/skelton/lower limp.png",
              title: "Lower Limps",
              desc:
                  " Supports the body's weight, enables locomotion, and facilitates various movements of the legs and feet."),
          ItemOrgans(
              asset: "assets/images/skeletalSystem/skelton/Pelvic Girdle.png",
              title: "Pelvic Girdle",
              desc:
                  "Connects the lower limbs to the axial skeleton and provides support for the body."),
        ],
      ),
    );
  }
}
