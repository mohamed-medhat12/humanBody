import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humanbody/Screens/Quiz_screens/Quiz_Respiratory.dart';
import 'package:humanbody/itemOrgans.dart';

import '../../videos.dart';
import '../Home.dart';

// ignore: camel_case_types
class Respiratory_System extends StatefulWidget {
  const Respiratory_System({Key? key}) : super(key: key);

  @override
  State<Respiratory_System> createState() => _Respiratory_SystemState();
}

class _Respiratory_SystemState extends State<Respiratory_System> {
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
          "Respiratory System",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black87,
            fontSize: 30,
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
                padding: EdgeInsets.only(right: 40.w, left: 40.w, bottom: 40.h),
                height: 260.h,
                width: 100.h,
                decoration: const BoxDecoration(
                  color: Color(0xffA8FFBF),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(90),
                      bottomLeft: Radius.circular(90)),
                ),
                child: Image.asset(
                  "assets/images/Lungs.jpg",
                  scale: 2,
                )),
          ),
          SizedBox(
            height: 15.h,
          ),
          ItemOrgans(
              asset: 'assets/images/Node and nasal cavity.jpg',
              title: 'Nose and Nasal Cavity',
              desc:
                  'The nose and nasal cavity are responsible for filtering, warming, and moistening the air as it enters the body.'),
          ItemOrgans(
              asset: 'assets/images/Pharynx.jpg',
              title: 'Pharynx',
              desc:
                  'The pharynx, or throat, serves as a common passageway for both air and food. It is divided into three regions: nasopharynx, oropharynx, and laryngopharynx.'),
          ItemOrgans(
              asset: 'assets/images/Larynx.jpg',
              title: 'Larynx',
              desc:
                  'The larynx, commonly known as the voice box, plays a crucial role in producing sound and protecting the lower respiratory tract by closing off during swallowing.'),
          ItemOrgans(
              asset: 'assets/images/Trachea.jpeg',
              title: 'Trachea',
              desc:
                  'The trachea, also called the windpipe, is a tube-like structure that carries air from the larynx to the bronchi.'),
          ItemOrgans(
              asset: 'assets/images/Bronchi.webp',
              title: 'Bronchi',
              desc:
                  'The trachea branches into two bronchi, with one entering each lung. These bronchi further divide into smaller tubes called bronchioles.'),
          ItemOrgans(
              asset: 'assets/images/Lungs.jpg',
              title: 'Lungs',
              desc:
                  'The lungs are the main organs of the respiratory system. They are responsible for the exchange of oxygen and carbon dioxide between the air and the bloodstream. The right lung has three lobes, while the left lung has two lobes.'),
          ItemOrgans(
              asset: 'assets/images/Alveoli.jpg',
              title: 'Alveoli',
              desc:
                  'The alveoli are tiny air sacs located at the ends of the bronchioles within the lungs. They are the primary sites of gas exchange, where oxygen from inhaled air enters the bloodstream, and carbon dioxide is removed from the blood for exhalation.'),
          ItemOrgans(
              asset: 'assets/images/Diaphragm.jpg',
              title: 'Diaphragm',
              desc:
                  'The diaphragm is a dome-shaped muscle located below the lungs. It plays a crucial role in the breathing process by contracting and relaxing, causing changes in lung volume to facilitate inhalation and exhalation.'),
          SizedBox(
            height: 15.h,
          ),

          const AddVideo(youtubeUrl: "https://youtu.be/SPGRkexI_cs"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Quiz_Respiratory();
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
