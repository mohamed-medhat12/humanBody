import 'package:flutter/material.dart';
import 'package:humanbody/Screens/welcom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: welcome(),
          );
        });
  }
}
/** 
#F27674
#A8FFBF
#645C8F
#ADDCDE
#88BEC9
 */
