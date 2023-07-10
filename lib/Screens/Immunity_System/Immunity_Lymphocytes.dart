import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/ItemSystem.dart';
import 'package:humanbody/itemOrgans.dart';

import 'immunity_TCells.dart';

class Immunity_Lymphocytes extends StatefulWidget {
  const Immunity_Lymphocytes({Key? key}) : super(key: key);

  @override
  State<Immunity_Lymphocytes> createState() => _Immunity_LymphocytesState();
}

class _Immunity_LymphocytesState extends State<Immunity_Lymphocytes> {
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
          "Lymphocytes",
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
            height: 260,
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
                    "assets/images/immunity/Lymphocytes/lymphosyte.png")),
          ),
          const SizedBox(
            height: 15,
          ),
          ItemOrgans(
              asset:
                  "assets/images/immunity/Lymphocytes/NaturalKillerCells.png",
              title: "Natural Killer Cells",
              desc:
                  "Natural Killer (NK) cells play a crucial role in innate immunity by recognizing and eliminating infected or cancerous cells without prior sensitization."),
          const ItemSystem(
            asset: "assets/images/immunity/Lymphocytes/tcells.png",
            title: "T-Cells",
            desc:
                "T-cells are key players in adaptive immunity, responsible for recognizing and directly attacking infected cells, coordinating immune responses, and regulating immune activity.",
            menu: Immunity_TCells(),
          ),
          ItemOrgans(
              asset: "assets/images/immunity/Lymphocytes/Blymphocytes.png",
              title: "B-Lymphocytes",
              desc:
                  "B-lymphocytes (B cells) are responsible for producing antibodies, which target and neutralize pathogens, as well as playing a role in long-term immune memory.")
        ],
      ),
    );
  }
}
