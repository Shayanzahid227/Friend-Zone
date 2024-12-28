import 'package:code_structure/core/model/Upcoming_events_detail.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomUpComingEventsWidget extends StatelessWidget {
  UpcomingEventsDetailModel Object_UpComingEvents = UpcomingEventsDetailModel();
  CustomUpComingEventsWidget({super.key, required this.Object_UpComingEvents});

  @override
  Widget build(BuildContext context) {
    double screenHeights = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeights * 0.4,
      width: ScreenWidth * 0.8,
      decoration: BoxDecoration(
          boxShadow: [
            // BoxShadow(
            //     color: Colors.black,
            //     offset: const Offset(0.1, 2),
            //     blurRadius: 2.r,
            //     spreadRadius: 1)
          ],
          color: const Color.fromARGB(255, 220, 214, 214),
          borderRadius: BorderRadius.circular(18)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset("${Object_UpComingEvents.imgUrl}",
            fit: BoxFit.cover, height: 186, width: double.infinity, scale: 310),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${Object_UpComingEvents.GroupName}"),
              SizedBox(
                height: 8,
              ),
              Text("${Object_UpComingEvents.time}"),
              Text("${Object_UpComingEvents.day}"),
              SizedBox(
                height: 8,
              ),
              Text("${Object_UpComingEvents.message}")
            ],
          ),
        )
      ]),
    );
  }
}
