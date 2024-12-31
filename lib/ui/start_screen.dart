import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/custom_widgets/friend_zone/expended_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
              "Welcome to “Friend Zone” Connect and Collaborate With Ease!",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
          Image.asset(
            AppAssets().app_logo,
            fit: BoxFit.cover,
          ),
          CustomExpendButton(text: "text"),
        ],
      ),
    );
  }
}
