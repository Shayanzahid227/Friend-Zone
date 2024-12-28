import 'package:code_structure/core/model/key_factor_CS.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomKeyFactorCompatibilityScoreWidget extends StatelessWidget {
  KeyFactorComapatibiltyScoreModel Object_KeyFactorCS =
      KeyFactorComapatibiltyScoreModel();
  CustomKeyFactorCompatibilityScoreWidget(
      {super.key, required this.Object_KeyFactorCS});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage("${Object_KeyFactorCS.imgUrl}"),
              fit: BoxFit.cover)),
    );
  }
}
