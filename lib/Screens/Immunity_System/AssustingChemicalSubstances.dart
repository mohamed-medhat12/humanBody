import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/itemOrgans.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AssustingChemicalSubstances extends StatefulWidget {
  const AssustingChemicalSubstances({Key? key}) : super(key: key);

  @override
  State<AssustingChemicalSubstances> createState() =>
      _AssustingChemicalSubstancesState();
}

class _AssustingChemicalSubstancesState
    extends State<AssustingChemicalSubstances> {
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
          "Assusting Chemical Substances",
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
                      "assets/images/immunity/AssistingChemicalSubstances/chimecialsSubstances-removebg-preview.png"))),
          ItemOrgans(
              asset:
                  "assets/images/immunity/AssistingChemicalSubstances/chemokines.png",
              title: "Chemokines",
              desc:
                  "Chemokines are small signaling proteins that regulate immune cell migration and positioning within tissues, facilitating immune responses by attracting specific immune cells to sites of infection, inflammation, or tissue damage."),
          ItemOrgans(
              asset:
                  "assets/images/immunity/AssistingChemicalSubstances/Interleukins.png",
              title: "Interleukins",
              desc:
                  "Interleukins are a group of signaling molecules that regulate and coordinate various immune responses, including inflammation, cell growth, differentiation, and communication between immune cells, contributing to the overall functioning of the immune system."),
          ItemOrgans(
              asset:
                  "assets/images/immunity/AssistingChemicalSubstances/complements.png",
              title: "Complement",
              desc:
                  "The complement system is a cascade of proteins that enhances immune responses by promoting inflammation, opsonization, and direct lysis of pathogens, aiding in the clearance of infections and the modulation of immune reactions."),
          ItemOrgans(
              asset:
                  "assets/images/immunity/AssistingChemicalSubstances/Interferons.png",
              title: "Interferons",
              desc:
                  "Interferons are cytokines that play a vital role in the immune system by inducing antiviral responses, activating immune cells, and regulating inflammation to combat viral infections and modulate immune defenses."),
        ],
      ),
    );
  }
}
