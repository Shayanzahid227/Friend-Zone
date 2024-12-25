import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/core/model/home_groups.dart';
import 'package:flutter/material.dart';

class CustomHomeGroupsWidget extends StatelessWidget {
  HomeGroupsModel Object_homeGroups = HomeGroupsModel();
  CustomHomeGroupsWidget({required this.Object_homeGroups});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage("${Object_homeGroups.imgUrl}"),
              fit: BoxFit.cover)),
    );
  }
}
