import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemOrgans.dart';
import 'package:humanbody/ItemSystem.dart';
import 'Autonomic_Nervous_System.dart';

class PeripheralSystem extends StatefulWidget {
  const PeripheralSystem({super.key});

  @override
  State<PeripheralSystem> createState() => _PeripheralSystemState();
}

class _PeripheralSystemState extends State<PeripheralSystem> {
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
          "Peripheral Nervous",
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
                child:
                    Image.asset("assets/images/Peripheral Nervous System.jpg")),
          ),
          SizedBox(
            height: 15.h,
          ),
          ItemOrgans(
            asset: "assets/images/Somatic Nervous System.jpg",
            title: "Somatic Nervous System",
            desc:
                "This part of the PNS controls voluntary movements and transmits sensory information from the body's sensory receptors (such as the skin, muscles, and joints) to the CNS.",
          ),
          const ItemSystem(
            asset: 'assets/images/Somatic Nervous System.jpg',
            title: "Autonomic Nervous System",
            desc:
                "The autonomic nervous system regulates involuntary bodily functions and maintains homeostasis. It is further divided into two branches: Sympathetic Nervous System and Parasympathetic Nervous System ",
            menu: Autonomic_System(),
          ),
        ],
      ),
    );
  }
}
