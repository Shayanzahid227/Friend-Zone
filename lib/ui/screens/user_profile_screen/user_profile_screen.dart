import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/buttons/custom_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/multimedia_introduction.dart';
import 'package:code_structure/custom_widgets/friend_zone/profile_2_listyview.dart';
import 'package:code_structure/ui/screens/user_profile_screen/user_profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool isSelected = true;
  @override
  void initState() {
    super.initState();
  }

  void onClick() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileViewModel(),
        child: Consumer<ProfileViewModel>(builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Color(0xffffffff),

            ///
            /// App Bar
            ///
            appBar: _appBar(context),

            ///
            /// Start Body
            ///
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _profile(),

                    ///
                    /// Custom Button Follow
                    ///
                    CustomButton(
                      name: "Follow",
                      onPressed: () {},
                      textColor: whiteColor,
                    ),

                    ///
                    /// Custom Button chat
                    ///
                    CustomButton(
                      name: "Chat",
                      borderColor: borderColor,
                      boxColor: transparentColor,
                      onPressed: () {},
                      textColor: blackColor,
                    ),

                    25.verticalSpace,
                    Text("Multimedia Introduction",
                        style: style16B.copyWith(
                            color: blackColor, fontSize: 18.sp)),

                    SizedBox(
                      height: 210.h,
                      child: ListView.builder(
                        itemCount: model.listProfileMultiMedia.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: CustomMultiMediaIntrodductionWidget(
                                Object_profileMultiMedia:
                                    model.listProfileMultiMedia[index]),
                          );
                        },
                      ),
                    ),

                    SizedBox(
                      height: 210.h,
                      child: ListView.builder(
                        itemCount: model.listProfile_2_list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {},
                              child: CustomSecondListWidget(
                                  Object_Profile_2_list:
                                      model.listProfile_2_list[index]),
                            ),
                          );
                        },
                      ),
                    ),
                    // 20.verticalSpace,
                    // Text("Personal Information"),
                    // 10.verticalSpace,
                    // _textFeild(
                    //   input: "Age: 20",
                    // ),
                    // 30.verticalSpace,
                    // _textFeild(
                    //   input: "Location : San Francisco ",
                    // ),
                    // 30.verticalSpace,
                    // _textFeild(
                    //   input: "RTelationShip Preferences : Open to all ",
                    // ),
                    // 30.verticalSpace,
                    // _textFeild(
                    //   input: "Hobbies : Hiking , Reading ..",
                    // ),
                    // 30.verticalSpace,
                    // Row(
                    //   children: [
                    //     Text(
                    //       "Preferences and Setting",
                    //       style: GoogleFonts.nunito(
                    //           fontWeight: FontWeight.w800, fontSize: 17),
                    //     ),
                    //     220.horizontalSpace,
                    //     GestureDetector(
                    //       onTap: () {
                    //         // Navigator.push(
                    //         //     context,
                    //         //     MaterialPageRoute(
                    //         //         builder: (context) => HomeScreen()));
                    //       },
                    //       child: Icon(
                    //         Icons.arrow_forward_ios_rounded,
                    //         color: Colors.grey[600],
                    //       ),
                    //     )
                    //   ],
                    // ),
                    // 20.verticalSpace,
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: CustomExpend_Icon_Button(
                    //       icon: Icon(Icons.swap_vertical_circle_rounded),
                    //       text: "Save Changes"),
                    // ),

                    // 25.verticalSpace,
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 59),
                    //   child: Align(
                    //     alignment: Alignment.bottomRight,
                    //     child: CustomShrinkButton(
                    //         icon: Icon(Icons.edit), text: "Quick edit"),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}

_appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color(0xffffffff),
    leading: Icon(Icons.arrow_back_ios),
    title: Text(
      "User Profile",
      style: style24B.copyWith(color: blackColor),
    ),
    centerTitle: true,
    // actions: [
    //   Icon(
    //     Icons.edit,
    //     color: blackColor,
    //   ),
    //   20.horizontalSpace,
    //   Icon(
    //     Icons.settings,
    //     color: blackColor,
    //   )
    // ],
  );
}

_profile() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 70.r,
          backgroundImage: AssetImage("$dynamicAssets/woman.png"),
        ),
        Text(
          "Aurelia Smith",
          style: style25B.copyWith(color: blackColor),
        ),
        Text(
          "Nature lover and weekend hiker",
          style: style16.copyWith(color: blackColor),
        ),
        5.verticalSpace,
        Text(
          "Verified Badge 95% Compatibility",
          style: style14B.copyWith(color: greyColor),
        ),
      ],
    ),
  );
}
