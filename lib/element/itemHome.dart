import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class item extends StatelessWidget {
  final String? text;
  final String? image;
  final Widget? Screen;

  const item({
    required this.image,
    required this.text,
    required this.Screen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Screen!;
              },
            ),
          );
        },
        child: Container(
          padding:
              const EdgeInsets.only(top: 15, right: 15, bottom: 15, left: 15),
          width: double.infinity.w,
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            shape: BoxShape.rectangle,
            color: const Color(0xffF27674),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image!,
                width: 80.w,
                height: 80.h,
              ),
              Text(
                text!,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: 'BraahOne',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
