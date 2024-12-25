import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/core/model/schedual_meetups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSchedualMeetUpsWidget extends StatelessWidget {
  SchedualMeetupsModel Object_scgedualMeetUps = SchedualMeetupsModel();
  CustomSchedualMeetUpsWidget(
      {super.key, required this.Object_scgedualMeetUps});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      height: screenheight * 0.3,
      width: screenWidth * 0.44,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
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
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xfff1b1e28)),
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
