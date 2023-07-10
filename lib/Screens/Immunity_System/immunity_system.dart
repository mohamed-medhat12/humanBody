import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/videos.dart';

import '../../ItemSystem.dart';
import '../Home.dart';
import '../Quiz_screens/Quiz_Immunity.dart';
import 'Antibodies.dart';
import 'AssustingChemicalSubstances.dart';
import 'Immunity_Lymphocytes.dart';
import 'Immunity_LymphoidOrgans.dart';
import 'Macrophages.dart';
import 'otherWhiteBloodCells.dart';

class ImmunitySystem extends StatefulWidget {
  const ImmunitySystem({Key? key}) : super(key: key);

  @override
  State<ImmunitySystem> createState() => _ImmunitySystemState();
}

class _ImmunitySystemState extends State<ImmunitySystem> {
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
          "Immunity System",
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
              height: 260.h,
              width: 100.h,
              decoration: const BoxDecoration(
                  color: Color(0xffA8FFBF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90))),
              child: Image.asset(
                "assets/images/immunity/Picture5.png",
                scale: 3,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const ItemSystem(
            asset: "assets/images/immunity/lymphoidorgans-removebg-preview.png",
            title: "Lymphoid organs",
            desc:
                "Lymphoid organs play a crucial role in the production, maturation, and activation of immune cells involved in the body's defense against pathogens and foreign substances.",
            menu: Immunity_LymphoidOrgans(),
          ),
          const ItemSystem(
            asset: "assets/images/immunity/Lymphocytes/Lympho.jpg",
            title: "Lymphosytes",
            desc:
                "Lymphocytes are responsible for recognizing and targeting specific antigens, orchestrating immune responses, and maintaining immune memory.",
            menu: Immunity_Lymphocytes(),
          ),
          const ItemSystem(
            asset:
                "assets/images/immunity/otherWhiteBloodCells/otherWhiteBloodCells.jpg",
            title: "other white blood cells",
            desc:
                "Other white blood cells, such as neutrophils, monocytes, and eosinophils, contribute to immune responses by phagocytosing pathogens, presenting antigens, and releasing inflammatory mediators.",
            menu: OtherWhiteBloodCells(),
          ),
          const ItemSystem(
            asset: "assets/images/immunity/Macrophages/Macrophages.jpg",
            title: "Macrophages",
            desc:
                "Macrophages are responsible for engulfing and digesting pathogens, presenting antigens to other immune cells, and regulating immune responses.",
            menu: Macrophages(),
          ),
          const ItemSystem(
            asset:
                "assets/images/immunity/AssistingChemicalSubstances/chimecialsSubstances.jpg",
            title: "Assisting chemical substances",
            desc:
                "Assisting chemical substances, such as cytokines and antibodies, aid in cell communication, coordination of immune responses, and neutralization of pathogens, promoting an effective immune system defense.",
            menu: AssustingChemicalSubstances(),
          ),
          const ItemSystem(
            asset: "assets/images/immunity/Antibodies/antibodes.png",
            title: "Antibodies",
            desc:
                "Antibodies (immunoglobulins) bind to specific antigens, marking them for destruction, neutralizing toxins, facilitating phagocytosis, and activating other components of the immune system to eliminate pathogens.",
            menu: Antibodies(),
          ),
          SizedBox(
            height: 15.h,
          ),

          const AddVideo(youtubeUrl: "https://youtu.be/rp7T4IItbtM"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Quiz_Immunitty();
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
