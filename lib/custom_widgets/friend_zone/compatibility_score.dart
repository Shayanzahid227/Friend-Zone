import 'package:code_structure/core/model/dashbord_Score_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomCompatibilityScorewidget extends StatelessWidget {
  DashBordCompatitbiltyScoreModel object_CompitableScore =
      DashBordCompatitbiltyScoreModel();
  // final String imgUrl;
  // final String tittle;
  // final String subtittle;
  CustomCompatibilityScorewidget(
      {super.key, required this.object_CompitableScore

      // required this.imgUrl,
      // required this.tittle,
      // required this.subtittle
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Color(0xffffcfdff),
          border: Border.all(color: Color(0xfff49526e20)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Image.asset(
            "${object_CompitableScore.imgUrl}",
            fit: BoxFit.contain,
            scale: 3.2,
            width: double.infinity,
            height: 130,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "${object_CompitableScore.tiitle}",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "${object_CompitableScore.subTittle}",
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
