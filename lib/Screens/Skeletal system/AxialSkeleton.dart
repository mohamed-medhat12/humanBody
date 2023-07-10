import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';

class AxialSkeleton extends StatefulWidget {
  const AxialSkeleton({Key? key}) : super(key: key);

  @override
  State<AxialSkeleton> createState() => _AxialSkeletonState();
}

class _AxialSkeletonState extends State<AxialSkeleton> {
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
          "Axial Skeleton",
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
                    "assets/images/skeletalSystem/skeletalSystem-removebg-preview.png")),
          ),
          SizedBox(
            height: 10.h,
          ),
          ItemOrgans(
              asset: "assets/images/skeletalSystem/skelton/skull.jpg",
              title: "Skull",
              desc:
                  "Protects the brain and sensory organs, such as the eyes, ears, and nose."),
          ItemOrgans(
              asset: "assets/images/skeletalSystem/skelton/VertebralColumn.png",
              title: "Vertebral Column",
              desc:
                  "Supports the body, protects the spinal cord, and allows for movement and flexibility."),
          ItemOrgans(
              asset:
                  "assets/images/skeletalSystem/skelton/Thoracic_Cage-removebg-preview.png",
              title: "Thoracic cage",
              desc:
                  "The function of the thoracic cage is to protect the heart, lungs, and other vital organs, as well as provide support for breathing and attachment sites for muscles."),
        ],
      ),
    );
  }
}
