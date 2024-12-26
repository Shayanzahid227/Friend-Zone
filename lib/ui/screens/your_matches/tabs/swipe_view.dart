import 'package:code_structure/custom_widgets/friend_zone/expended_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/your_matches.dart';
import 'package:code_structure/custom_widgets/friend_zone/your_matches_comment.dart';
import 'package:code_structure/ui/screens/your_matches/your_matchs_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SwipTabYourMatvhes extends StatefulWidget {
  const SwipTabYourMatvhes({super.key});

  @override
  State<SwipTabYourMatvhes> createState() => _SwipTabYourMatvhesState();
}

class _SwipTabYourMatvhesState extends State<SwipTabYourMatvhes> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (context) => YourMatchesViewModel(),
      child: Consumer<YourMatchesViewModel>(
          builder: (context, model, child) => Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        25.verticalSpace,
                        Text(
                          "Swipable Profiles",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        15.verticalSpace,

                        ///
                        ///
                        ///       swipable profile listView
                        ///
                        ///
                        SizedBox(
                          height: screenHeight * 0.23,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: model.listYourMatches.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: CustomYourMatcheswidget(
                                      Object_YourMatches:
                                          model.listYourMatches[index]),
                                ),
                              );
                            },
                          ),
                        ),
                        25.verticalSpace,
                        SizedBox(
                          height: screenHeight * 0.5,
                          child: ListView.builder(
                            itemCount: model.listYourMatchesComment.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CustomYourMatchesCommentSection(
                                  Object_YourMatchesComment:
                                      model.listYourMatchesComment[index]);
                            },
                          ),
                        ),
                        25.verticalSpace,
                        CustomExpendButton(text: "Button Lable"),
                        26.verticalSpace,
                        CustomExpendButton(text: "Save for Later"),
                        40.verticalSpace
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
