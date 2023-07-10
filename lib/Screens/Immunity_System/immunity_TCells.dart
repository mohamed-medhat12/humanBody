import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/itemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Immunity_TCells extends StatefulWidget {
  const Immunity_TCells({Key? key}) : super(key: key);

  @override
  State<Immunity_TCells> createState() => _Immunity_TCellsState();
}

class _Immunity_TCellsState extends State<Immunity_TCells> {
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
          "T-Cells",
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
                      "assets/images/immunity/Lymphocytes/Tcell-removebg-preview.png"))),
          ItemOrgans(
            asset: "assets/images/immunity/Lymphocytes/Helpor.png",
            title: "Helpor T-Cells",
            desc:
                "Helper T-cells (T-helper cells) assist in coordinating immune responses by releasing chemical signals that activate other immune cells, enhancing their ability to eliminate pathogens.",
          ),
          ItemOrgans(
            asset:
                "assets/images/immunity/Lymphocytes/cytotoxicTcell-removebg-preview.png",
            title: "Cytotoxic T-Cells",
            desc:
                "Cytotoxic T-cells (CD8+ T cells) directly kill infected or abnormal cells by releasing toxic substances, playing a crucial role in eliminating intracellular pathogens and controlling tumor growth.",
          ),
          ItemOrgans(
            asset:
                "assets/images/immunity/Lymphocytes/gattinoni_rotator-removebg-preview.png",
            title: "Suppressor T-Cells",
            desc:
                "Suppressor T-cells (Treg cells) help regulate and suppress excessive immune responses, preventing autoimmune reactions and maintaining immune system balance.",
          ),
        ],
      ),
    );
  }
}
