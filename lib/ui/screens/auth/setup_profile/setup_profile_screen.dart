import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/buttons/custom_button.dart';
import 'package:code_structure/ui/screens/auth/setup_profile/uplaod_profile_video.dart';
import 'package:code_structure/ui/screens/root_screen/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetupProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      /// App Bar
      ///
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Setup Profile",
          style: style24B.copyWith(color: blackColor),
        ),
      ),

      ///
      /// Start Body
      ///
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Introduce Yourself",
                    style: style16B.copyWith(color: blackColor),
                  ),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                      hintText: "Introduce yourself",
                      hintStyle: style14B.copyWith(color: greyColor),
                      fillColor: blackColor.withOpacity(0.04)),
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Upload Photo/Video",
                    style: style16B.copyWith(color: blackColor),
                  ),
                ),
                10.verticalSpace,
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UplaodProfileVideoScreen()));
                  },
                  child: TextFormField(
                    decoration: authFieldDecoration.copyWith(
                        hintText: "Take Photo/Video or Choose from Gallery",
                        hintStyle: style14B.copyWith(color: greyColor),
                        fillColor: blackColor.withOpacity(0.04)),

                    enabled: false, // Ensure the field is enabled
                  ),
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Personal Interests",
                    style: style16B.copyWith(color: blackColor),
                  ),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                      hintText: "Search interests (e.g., Hiking, Cooking)",
                      hintStyle: style14B.copyWith(color: greyColor),
                      fillColor: blackColor.withOpacity(0.04)),
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Profile Preferences",
                    style: style16B.copyWith(color: blackColor),
                  ),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                      hintText:
                          "Looking for Friends, Interested in Events, Show Compatibility Score",
                      hintStyle: style14B.copyWith(color: greyColor),
                      fillColor: blackColor.withOpacity(0.04)),
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Select Interests",
                    style: style16B.copyWith(color: blackColor),
                  ),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                      prefixIcon: Icon(
                        Icons.search,
                        color: greyColor,
                      ),
                      hintText: "Search Interests",
                      hintStyle: style14B.copyWith(color: greyColor),
                      fillColor: blackColor.withOpacity(0.04)),
                ),
                GridView.builder(
                  padding: EdgeInsets.all(8.0),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30.r,
                            backgroundImage:
                                AssetImage("$dynamicAssets/woman.png"),
                          ),
                          Text(
                            "Hiking",
                            style: style14B.copyWith(
                                color: blackColor, fontSize: 12),
                          )
                        ],
                      ),
                    );
                  },
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Visibility Settings",
                    style: style16B.copyWith(color: blackColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Control who can view your profile",
                    style: style14B.copyWith(color: greyColor),
                  ),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                      prefixIcon: Icon(
                        Icons.visibility,
                        color: greyColor,
                      ),
                      hintText: "Visible to Matches Only",
                      hintStyle: style14B.copyWith(color: greyColor),
                      fillColor: blackColor.withOpacity(0.04)),
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Location",
                    style: style16B.copyWith(color: blackColor),
                  ),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: greyColor,
                      ),
                      hintText: "Use My Current Location",
                      hintStyle: style14B.copyWith(color: greyColor),
                      fillColor: blackColor.withOpacity(0.04)),
                ),
                20.verticalSpace,
                CustomButton(
                  name: "Submit",
                  onPressed: () {},
                  textColor: whiteColor,
                ),
                CustomButton(
                  borderColor: borderColor,
                  boxColor: whiteColor,
                  name: "Skip",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RootScreen()));
                  },
                  textColor: blackColor,
                )
              ]),
        ),
      ),
    );
  }
}
