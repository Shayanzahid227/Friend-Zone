import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/model/nearby_matches_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomNearbyMatchesWidget extends StatelessWidget {
  NearbyMatchesModel Object_nearbyMatches = NearbyMatchesModel();
  CustomNearbyMatchesWidget({super.key, required this.Object_nearbyMatches});

  @override
  Widget build(BuildContext context) {
    double screenHeights = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black,
            offset: const Offset(0.0, 0),
            blurRadius: 0.r,
            spreadRadius: 0.1)
      ], color: whiteCoolor, borderRadius: BorderRadius.circular(18)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          "${Object_nearbyMatches.imgUrl}",
          fit: BoxFit.cover,
          height: 186,
          width: double.infinity,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${Object_nearbyMatches.GroupName}",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800, fontSize: 17),
              ),
              SizedBox(
                height: 8,
              ),
              Text("${Object_nearbyMatches.time}"),
              Text("${Object_nearbyMatches.day}"),
              SizedBox(
                height: 8,
              ),
              Text("${Object_nearbyMatches.message}")
            ],
          ),
        )
      ]),
    );
  }
}
