import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';
import 'package:humanbody/ItemSystem.dart';

import '../../videos.dart';
import '../Home.dart';
import '../Quiz_screens/Quiz_Nervous.dart';
import 'Peripheral_System.dart';

class NervousSystem extends StatefulWidget {
  const NervousSystem({Key? key}) : super(key: key);

  @override
  State<NervousSystem> createState() => _NervousSystemState();
}

class _NervousSystemState extends State<NervousSystem> {
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
          "Nervous System",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black87,
            fontSize: 30.sp,
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
                // padding: const EdgeInsets.all(15),
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
              asset: 'assets/images/Central Nervous System.jpg',
              title: "Central Nervous System",
              desc:
                  "The CNS consists of the brain and the spinal cord. The brain is the control center of the body, responsible for processing and interpreting sensory information, initiating voluntary movements, and regulating various bodily functions. The spinal cord is a long, cylindrical bundle of nerve fibers that extends from the brain and acts as a pathway for transmitting signals between the brain and the rest of the body."),
          const ItemSystem(
              asset: 'assets/images/Peripheral Nervous System.jpg',
              title: "Peripheral Nervous System",
              desc:
                  "The PNS includes all the nerves and ganglia outside of the CNS. It serves as a communication network between the CNS and the rest of the body. The PNS can be further divided into two components:  Somatic Nervous System and Autonomic Nervous System",
              menu: PeripheralSystem()),
          SizedBox(
            height: 15.h,
          ),

          const AddVideo(youtubeUrl: "https://youtu.be/jmD0LBdAvlE"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Quiz_Nervous();
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
