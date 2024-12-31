// ignore_for_file: deprecated_member_use

import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/friend_zone/expended_+_icon_button.dart';
import 'package:code_structure/custom_widgets/buttons/custom_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/key_factor_CS.dart';
import 'package:code_structure/ui/screens/compatibility_screen/compatibility_score_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompatibiltyScore extends StatefulWidget {
  const CompatibiltyScore({super.key});

  @override
  State<CompatibiltyScore> createState() => _CompatibiltyScoreState();
}

class _CompatibiltyScoreState extends State<CompatibiltyScore> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KeyFactorCSViewModel(),
      child: Consumer<KeyFactorCSViewModel>(
          builder: (context, model, child) => Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///
                      /// Start from there
                      ///
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back)),
                            Text(
                              "Compatibility",
                              style: style24B,
                            ),
                          ],
                        ),
                      ),

                      ///
                      /// Header
                      ///

                      CompatibilityCard(),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Key Factors",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w800, fontSize: 17),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),

                      ///
                      /// GridView Data Source
                      ///

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.5,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemCount: model.listKeyFactoCS.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {},
                              child: CustomKeyFactorCompatibilityScoreWidget(
                                  Object_KeyFactorCS:
                                      model.listKeyFactoCS[index]),
                            );
                          },
                        ),
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text(
                      //       "add user profile type info check in Figma i made a custom widget but ..."),
                      // ),
                      // 20.verticalSpace,

                      ///
                      /// Custom Button
                      ///
                      //   CustomButton(
                      //     name: "Add to Network",
                      //     onPressed: () {},
                      //     textColor: whiteCoolor,
                      //   ),

                      //   20.verticalSpace,
                      //   Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Text(
                      //       "Actionable Tips",
                      //       style: GoogleFonts.nunito(
                      //           fontWeight: FontWeight.w800, fontSize: 17),
                      //     ),
                      //   ),

                      //   Center(
                      //     child: SizedBox(
                      //       width: 350.w,
                      //       child: Divider(
                      //         height: 1,
                      //         color: Colors.grey[300],
                      //       ),
                      //     ),
                      //   ),
                      //   SizedBox(
                      //     height: 400.h,
                      //     child: Text(
                      //         "add tips idk how dynamically it is add how many tips user want to add "),
                      //   ),
                      //   20.verticalSpace,
                      //   CustomExpend_Icon_Button(
                      //       icon: Icon(Icons.info_outline),
                      //       text: "View More Details"),
                      //   20.verticalSpace,
                      //   CustomExpend_Icon_Button(
                      //       icon: Icon(Icons.message), text: "Send a Message,"),
                      //   120.verticalSpace
                    ],
                  ),
                ),
              )),
    );
  }
}

class CompatibilityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.0),
            Colors.black.withOpacity(0.60)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          // Background Blur Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                '$staticAssets/image.png', // Add your background image in assets folder
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.80),
                    Colors.black.withOpacity(0.75),
                    Colors.white.withOpacity(0.50),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: blackColor.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Compatibility",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: blackColor.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Score",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: buttonColor,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "User",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "85% : Match",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: buttonColor,
                          child: Icon(Icons.check, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Match",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 16),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.5),
                        ),
                      ),
                    ),
                    20.horizontalSpace,
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
