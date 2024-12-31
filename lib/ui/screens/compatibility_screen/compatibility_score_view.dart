import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/custom_widgets/friend_zone/expended_+_icon_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/expended_button.dart';
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
                      SizedBox(
                          height: 150,
                          child: Center(
                              child: Text(
                                  "Add Progress bar and user match data here "))),
                      SizedBox(
                        height: 423.h,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.4,
                          ),
                          itemCount: model.listKeyFactoCS.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: CustomKeyFactorCompatibilityScoreWidget(
                                    Object_KeyFactorCS:
                                        model.listKeyFactoCS[index]),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "add user profile type info check in Figma i made a custom widget but ..."),
                      ),
                      20.verticalSpace,

                      ///
                      /// Custom Button
                      ///
                      CustomButton(
                        name: "Add to Network",
                        onPressed: () {},
                        textColor: whiteCoolor,
                      ),

                      20.verticalSpace,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Actionable Tips",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w800, fontSize: 17),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 350.w,
                          child: Divider(
                            height: 1,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 400.h,
                        child: Text(
                            "add tips idk how dynamically it is add how many tips user want to add "),
                      ),
                      20.verticalSpace,
                      CustomExpend_Icon_Button(
                          icon: Icon(Icons.info_outline),
                          text: "View More Details"),
                      20.verticalSpace,
                      CustomExpend_Icon_Button(
                          icon: Icon(Icons.message), text: "Send a Message,"),
                      120.verticalSpace
                    ],
                  ),
                ),
              )),
    );
  }
}
