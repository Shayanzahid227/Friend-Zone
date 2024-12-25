import 'package:code_structure/core/model/dashbord_Score_model.dart';
import 'package:code_structure/core/model/home_matches.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomHomeMatcheswidget extends StatelessWidget {
  HomeMatchesModel Object_homeMatches = HomeMatchesModel();
  // final String imgUrl;
  // final String tittle;
  // final String subtittle;
  CustomHomeMatcheswidget({required this.Object_homeMatches

      // required this.imgUrl,
      // required this.tittle,
      // required this.subtittle
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.h,
      width: 140.w,
      decoration: BoxDecoration(
          color: Color(0xffffcfdff),
          border: Border.all(color: Color(0xfff49526e20)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              "${Object_homeMatches.ImgUrl}",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 130,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "${Object_homeMatches.name}",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xfff1b1e28)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "${Object_homeMatches.location}",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xfff141a2e)),
            ),
          ),
        ],
      ),
    );
  }
}
