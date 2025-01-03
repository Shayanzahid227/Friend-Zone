// ignore_for_file: use_key_in_widget_constructors

import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/buttons/custom_button.dart';
import 'package:code_structure/custom_widgets/buttons/social_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/text_feild.dart';
import 'package:code_structure/ui/screens/auth/login/login_screen.dart';
import 'package:code_structure/ui/screens/auth/setup_profile/setup_profile_screen.dart';
import 'package:code_structure/ui/screens/home_screen/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            75.verticalSpace,
            Center(
              child: Text(
                "Sign Up",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800, fontSize: 24),
              ),
            ),
            30.verticalSpace,
            Center(
              child: Text(
                "Friend Zone",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600, fontSize: 29),
              ),
            ),
            20.verticalSpace,
            CustomTextFeild(hinttext: "Name "),
            CustomTextFeild(hinttext: "Enter your email or phone number"),
            CustomTextFeild(hinttext: "Enter your password"),
            CustomTextFeild(hinttext: "Confirm Password"),
            10.verticalSpace,
            Text(
              "Forgot Password?",
              style: style14.copyWith(
                  color: blackColor, fontWeight: FontWeight.w700),
            ),
            30.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: CustomButton(
                  name: "Sign Up",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SetupProfileScreen()));
                  }),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Already a member?",
                  style: style14N.copyWith(
                      color: blackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                    text: "Login ",
                    style: style14.copyWith(
                        color: buttonColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      })
              ]),
            ),
            20.verticalSpace,
            Text(
              "or",
              style: style16.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w500, color: blackColor),
            ),
            20.verticalSpace,
            CustomSocialIconButton(
              onPressed: () {},
              imagePath: AppAssets().FacebookIcon,
              color: buttonColor,
              name: "Continue with Facebook",
              textcolor: whiteColor,
            ),
            15.verticalSpace,
            CustomSocialIconButton(
              name: "Continue with Google",
              onPressed: () {},
              imagePath: AppAssets().GoogleIcon,
              color: whiteColor,
              textcolor: blackColor,
            ),
            15.verticalSpace,
            CustomSocialIconButton(
              name: "Continue with Apple",
              onPressed: () {},
              imagePath: AppAssets().AppleIcon,
              color: blackColor,
              textcolor: whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
