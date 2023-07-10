import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/itemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Antibodies extends StatefulWidget {
  const Antibodies({Key? key}) : super(key: key);

  @override
  State<Antibodies> createState() => _AntibodiesState();
}

class _AntibodiesState extends State<Antibodies> {
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
          "Antibodies",
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
                      "assets/images/immunity/Antibodies/antibodes-removebg-preview.png"))),
          ItemOrgans(
              asset:
                  "assets/images/immunity/Antibodies/IgM-removebg-preview.png",
              title: "LgM",
              desc:
                  "The primary function of IgM antibodies is to initiate the primary immune response by recognizing and neutralizing pathogens, activating complement system, and facilitating the recruitment of other immune cells."),
          ItemOrgans(
              asset: "assets/images/immunity/Antibodies/LgA_copy.png",
              title: "LgA",
              desc:
                  "The main function of IgA antibodies is to provide localized immune protection by preventing the attachment of pathogens to mucosal surfaces, such as those found in the respiratory, gastrointestinal, and genitourinary tracts."),
          ItemOrgans(
              asset: "assets/images/immunity/Antibodies/LgG_copy.png",
              title: "LgG",
              desc:
                  "IgG antibodies play a versatile role in the immune system, providing long-term protection by neutralizing pathogens, enhancing phagocytosis, activating complement system, and facilitating the transfer of immunity from mother to fetus."),
          ItemOrgans(
              asset: "assets/images/immunity/Antibodies/LgE_Copy.png",
              title: "LgE",
              desc:
                  'IgE antibodies function primarily in allergic responses and parasitic infections by triggering the release of histamine and other inflammatory molecules from mast cells, leading to allergic symptoms and defense against parasites.'),
          ItemOrgans(
              asset: "assets/images/immunity/Antibodies/LgD.png",
              title: "LgD",
              desc:
                  "The function of IgD antibodies is not fully understood, but they are believed to play a role in the activation and regulation of B cell immune responses, particularly in the early stages of antigen recognition and immune system development.")
        ],
      ),
    );
  }
}
