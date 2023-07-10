import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/itemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class OtherWhiteBloodCells extends StatefulWidget {
  const OtherWhiteBloodCells({Key? key}) : super(key: key);

  @override
  State<OtherWhiteBloodCells> createState() => _OtherWhiteBloodCellsState();
}

class _OtherWhiteBloodCellsState extends State<OtherWhiteBloodCells> {
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
          "Other White Blood Cells",
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
                      "assets/images/immunity/otherWhiteBloodCells/whiteBloodcell-removebg-preview.png"))),
          ItemOrgans(
              asset:
                  "assets/images/immunity/otherWhiteBloodCells/Basophils.png",
              title: "Basophilis",
              desc:
                  "Basophils function as specialized white blood cells involved in allergic reactions and immune responses by releasing histamine and other inflammatory mediators."),
          ItemOrgans(
              asset:
                  "assets/images/immunity/otherWhiteBloodCells/Acidophils.jpg",
              title: "Acidophils",
              desc:
                  "Acidophils are a type of endocrine cell in the anterior pituitary gland that release growth hormone (GH) and prolactin, regulating growth, metabolism, and reproductive functions."),
          ItemOrgans(
              asset:
                  "assets/images/immunity/otherWhiteBloodCells/Neutrophils.jpg",
              title: "Neutrophils",
              desc:
                  "Neutrophils function as the most abundant type of white blood cells, playing a critical role in the immune system by engulfing and destroying pathogens through phagocytosis."),
          ItemOrgans(
              asset:
                  "assets/images/immunity/otherWhiteBloodCells/singlecoreMonocyte.jpg",
              title: "Single core Monocyte",
              desc:
                  "Single-core monocytes are large phagocytic white blood cells that migrate from the bloodstream to tissues, where they differentiate into macrophages or dendritic cells, contributing to immune defense, tissue repair, and antigen presentation.")
        ],
      ),
    );
  }
}
