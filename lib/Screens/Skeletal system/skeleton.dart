import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemSystem.dart';

import 'AppendicularSkeleton.dart';
import 'AxialSkeleton.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({Key? key}) : super(key: key);

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
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
          "Skeleton",
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
                      "assets/images/skeletalSystem/skeletalSystem-removebg-preview.png"))),
          SizedBox(
            height: 10.h,
          ),
          const ItemSystem(
            asset: "assets/images/skeletalSystem/skelton/axial-skeleton.png",
            title: "Axial Skeleton",
            desc:
                'Provides support and protection to the central axis of the body, including the skull, vertebral column, and rib cage.',
            menu: AxialSkeleton(),
          ),
          const ItemSystem(
            asset:
                "assets/images/skeletalSystem/skelton/Appendicular Skeleton.jpg",
            title: "Appendicular Skeleton",
            desc:
                "Facilitates movement and support of the limbs, including the shoulder girdle, upper limbs, pelvic girdle, and lower limbs.",
            menu: AppendicularSkeleton(),
          ),
        ],
      ),
    );
  }
}
