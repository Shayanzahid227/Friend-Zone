import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/custom_widgets/friend_zone/expended_+_icon_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/expended_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/multimedia_introduction.dart';
import 'package:code_structure/custom_widgets/friend_zone/profile_2_listyview.dart';
import 'package:code_structure/custom_widgets/friend_zone/shrink_button.dart';
import 'package:code_structure/ui/screens/profile_screen/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            appBar: AppBar(
              backgroundColor: Color(0xffffffff),
              leading: Icon(Icons.arrow_back_ios),
              title: Text("User Profile"),
              centerTitle: true,
              actions: [
                Icon(Icons.edit),
                20.horizontalSpace,
                Icon(Icons.settings)
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    50.verticalSpace,

                    CustomExpendButton(text: "Follow"),
                    25.verticalSpace,
                    Text("Multimedia Introduction"),

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
                    // Container(
                    //   width: double.infinity,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: transparentColor)),
                    //   child: TabBar(tabs: [
                    //     Container(
                    //       width: 90.w,
                    //       height: 35,
                    //       decoration: BoxDecoration(
                    //           border: Border.all(
                    //             color: borderColor,
                    //           ),
                    //           borderRadius: BorderRadius.circular(40)),
                    //       child: Tab(
                    //         child: Text("tech"),
                    //       ),
                    //     ),
                    //     Tab(
                    //       child: Text("sports"),
                    //     )
                    //   ]),
                    // ),
                    // Expanded(
                    //     child: TabBarView(
                    //         children: [Text("ghj"), Text("asdfghjk")])),

                    SizedBox(
                      height: 200.h,
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
                    20.verticalSpace,
                    Text("Personal Information"),
                    10.verticalSpace,
                    _textFeild(
                      input: "Age: 20",
                    ),
                    30.verticalSpace,
                    _textFeild(
                      input: "Location : San Francisco ",
                    ),
                    30.verticalSpace,
                    _textFeild(
                      input: "RTelationShip Preferences : Open to all ",
                    ),
                    30.verticalSpace,
                    _textFeild(
                      input: "Hobbies : Hiking , Reading ..",
                    ),
                    30.verticalSpace,
                    Row(
                      children: [
                        Text("Preferences and Setting"),
                        220.horizontalSpace,
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomeScreen()));
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey[600],
                          ),
                        )
                      ],
                    ),
                    20.verticalSpace,
                    GestureDetector(
                      onTap: () {},
                      child: CustomExpend_Icon_Button(
                          icon: Icon(Icons.swap_vertical_circle_rounded),
                          text: "Save Changes"),
                    ),

                    25.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.only(right: 59),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CustomShrinkButton(
                            icon: Icon(Icons.edit), text: "Quick edit"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}

//
//  custom text feild
//
class _textFeild extends StatelessWidget {
  final String? input;
  const _textFeild({this.input});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        decoration: authFieldDecoration.copyWith(
            hintText: input,
            hintStyle: TextStyle(color: Colors.grey[400]),
            fillColor: filledColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: transparentColor,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: transparentColor))),
      ),
    );
  }
}
