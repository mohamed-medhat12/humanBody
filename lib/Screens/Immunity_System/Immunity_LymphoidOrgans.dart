import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/itemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Immunity_LymphoidOrgans extends StatefulWidget {
  const Immunity_LymphoidOrgans({Key? key}) : super(key: key);

  @override
  State<Immunity_LymphoidOrgans> createState() =>
      _Immunity_LymphoidOrgansState();
}

class _Immunity_LymphoidOrgansState extends State<Immunity_LymphoidOrgans> {
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
          "Lymphoid Organs",
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
                  child: Image.asset("assets/images/immunity/Picture5.png"))),
          ItemOrgans(
            asset: "assets/images/immunity/bone_marrow.png",
            title: "Bone Marrow",
            desc:
                "Bone marrow is responsible for producing and maturing various immune cells, including B cells, T cells, and natural killer (NK) cells, essential for immune surveillance and defense.",
          ),
          ItemOrgans(
            asset: "assets/images/immunity/tonsils__1_-removebg-preview.png",
            title: "Tonsills",
            desc:
                "Tonsils help to detect and capture pathogens entering through the mouth and throat, initiating an immune response to prevent infection.",
          ),
          ItemOrgans(
            asset: "assets/images/immunity/thymus_gland.png",
            title: "Thymus gland",
            desc:
                "The thymus gland plays a crucial role in the development and maturation of T cells, which are essential for adaptive immunity.",
          ),
          ItemOrgans(
              asset: "assets/images/immunity/Spleon.png",
              title: "Spleen",
              desc:
                  "The spleen filters and clears old or damaged red blood cells, as well as serves as a reservoir for immune cells, playing a role in immune surveillance and response."),
          ItemOrgans(
              asset: "assets/images/immunity/Payer Patches.png",
              title: "Payer Patches",
              desc:
                  "Peyer's patches are specialized lymphoid tissues in the intestines that facilitate immune surveillance and the production of antibodies to defend against pathogens in the gastrointestinal tract."),
          ItemOrgans(
              asset: "assets/images/immunity/Lymph_nodes.png",
              title: "Lymph nodes",
              desc:
                  "Lymph nodes act as filtering stations, trapping and destroying foreign substances such as bacteria and viruses, while also facilitating immune cell communication and activation.")
        ],
      ),
    );
  }
}
