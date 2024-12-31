import 'package:code_structure/ui/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xffFAF8F6),

                ///
                /// Font Family
                ///
                fontFamily: "Nunito"),
            home: StartScreen()));
  }
}
