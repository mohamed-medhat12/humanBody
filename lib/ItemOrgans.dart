import 'package:flutter/material.dart';
//import 'package:human_body/screens/immunity/Immunity_DetailScreen.dart';

// ignore: must_be_immutable
class ItemOrgans extends StatelessWidget {
  ItemOrgans({
    Key? key,
    required this.asset,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String asset;
  final String title;
  final String desc;
  double screenWidth = 0;

  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // height: screenWidth / 2.8,
      // width: screenWidth,

      margin: EdgeInsets.only(
        bottom: screenWidth / 20,
      ),
      child: Row(
        children: [
          Hero(
            tag: title,
            child: Center(
              child: Container(
                width: screenWidth / 2.8,
                height: screenWidth / 2.8,
                margin: EdgeInsets.only(
                  right: screenWidth / 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    asset,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      desc,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
