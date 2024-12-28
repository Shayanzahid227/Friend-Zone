import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/custom_widgets/friend_zone/details_idk.dart';
import 'package:code_structure/custom_widgets/friend_zone/expended_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/up_coming_events_detail.dart';
import 'package:code_structure/ui/screens/details/detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailsScreenViewModel(),
      child: Consumer<DetailsScreenViewModel>(
          builder: (context, model, child) => Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 520.h,
                        width: double.infinity.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppAssets().detailmain),
                                fit: BoxFit.cover)),
                      ),
                      Text("add user info with DP here "),
                      30.verticalSpace,
                      CustomExpendButton(
                        text: "Follow",
                      ),
                      20.verticalSpace,
                      SizedBox(
                        height: 400.h,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.4,
                          ),
                          itemCount: model.listDetailIdk.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: CustomDetailIdkWidget(
                                    Object_DetailIdk:
                                        model.listDetailIdk[index]),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              " UpComming Events ",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            90.horizontalSpace,
                            Text(
                              "View all events",
                              style: TextStyle(
                                  color: Color(0xfff123cc9),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 310.h,
                          child: ListView.builder(
                            itemCount: model.listUpcomingEvents.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: CustomUpComingEventsWidget(
                                      Object_UpComingEvents:
                                          model.listUpcomingEvents[index]),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          child: Text(
                              "add comment section here i make a model and custom widget also sir using list tile but don't know.... "),
                        ),
                      ),
                      30.verticalSpace,
                      CustomExpendButton(text: "Join Chat"),
                      100.verticalSpace
                    ],
                  ),
                ),
              )),
    );
  }
}
