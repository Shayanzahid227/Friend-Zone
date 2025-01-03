import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/friend_zone/details_idk.dart';
import 'package:code_structure/custom_widgets/buttons/custom_button.dart';
import 'package:code_structure/custom_widgets/friend_zone/up_coming_events_detail.dart';
import 'package:code_structure/ui/screens/group_details/group_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GroupDetailsScreen extends StatefulWidget {
  const GroupDetailsScreen({super.key});

  @override
  State<GroupDetailsScreen> createState() => _GroupDetailsScreenState();
}

class _GroupDetailsScreenState extends State<GroupDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GroupDetailsViewModel(),
      child: Consumer<GroupDetailsViewModel>(
          builder: (context, model, child) => Scaffold(
                ///
                /// Start Body
                ///
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///
                      /// Header
                      ///
                      _header(),

                      10.verticalSpace,

                      ///
                      /// Profile
                      ///
                      _profile(),

                      ///
                      /// Custom Button
                      ///
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomButton(
                          name: "Join",
                          onPressed: () {},
                          textColor: whiteCoolor,
                        ),
                      ),
                      20.verticalSpace,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Gallery",
                          style: style16B.copyWith(
                              color: blackColor, fontSize: 18.sp),
                        ),
                      ),

                      ///
                      /// Gallery
                      ///
                      _gallery(model),

                      ///
                      /// Upcoming Events
                      ///
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("UpComming Events",
                            style: style16B.copyWith(color: blackColor)),
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

                      ///
                      /// Custom Button
                      ///
                      CustomButton(
                        name: "Join Chat",
                        onPressed: () {},
                        textColor: whiteCoolor,
                      ),

                      100.verticalSpace
                    ],
                  ),
                ),
              )),
    );
  }
}

_header() {
  return Container(
    height: 300.h,
    width: double.infinity.w,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets().group1), fit: BoxFit.cover)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "A group for hiking enthusiasts in your area",
          style: style16B.copyWith(color: whiteCoolor),
        ),
        10.verticalSpace,
        Text(
          "Friend Zone",
          style: style25B.copyWith(color: whiteCoolor),
        ),
        20.verticalSpace,
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              color: whiteCoolor, borderRadius: BorderRadius.circular(24.r)),
          child: Text(
            "Join",
            style: style14B.copyWith(color: blackColor),
          ),
        )
      ],
    ),
  );
}

_profile() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60.r,
          backgroundImage: AssetImage("$dynamicAssets/woman.png"),
        ),
        Text(
          "Aurelia Smith",
          style: style24B.copyWith(color: blackColor),
          textAlign: TextAlign.center,
        ),
        Text(
          "A group for hiking enthusiasts in your area",
          textAlign: TextAlign.center,
          style: style16N.copyWith(color: blackColor),
        ),
        Text(
          "50 Members 10 Events",
          textAlign: TextAlign.center,
          style: style14B.copyWith(color: greyColor),
        ),
      ],
    ),
  );
}

_gallery(GroupDetailsViewModel model) {
  return GridView.builder(
    padding: EdgeInsets.all(8.0),
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
    itemCount: model.listDetailIdk.length,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () {},
        child:
            CustomDetailIdkWidget(Object_DetailIdk: model.listDetailIdk[index]),
      );
    },
  );
}
