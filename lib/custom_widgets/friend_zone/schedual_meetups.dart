import 'package:code_structure/core/model/schedual_meetups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomScheduleMeetUpsWidget extends StatelessWidget {
  SchedualMeetupsModel Object_scgedualMeetUps = SchedualMeetupsModel();
  CustomScheduleMeetUpsWidget(
      {super.key, required this.Object_scgedualMeetUps});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      height: screenheight * 0.3,
      width: screenWidth * 0.44,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black,
            offset: const Offset(0.0, 0),
            blurRadius: 0.r,
            spreadRadius: 0.3)
      ], color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "${Object_scgedualMeetUps.imgUrl}",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 180.h,
          ),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "${Object_scgedualMeetUps.tiitle}",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "${Object_scgedualMeetUps.subtittle}",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xfff141a2e)),
            ),
          ),
        ],
      ),
    );
  }
}
