import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/custom_widgets/friend_zone/home_groups.dart';
import 'package:code_structure/custom_widgets/friend_zone/home_matches.dart';
import 'package:code_structure/custom_widgets/friend_zone/local_events.dart';
import 'package:code_structure/ui/screens/home_screen.dart/home_veiw_mdel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSelected = false;
  bool _isSelectedSchedaul = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onClick() {
    _isSelected = !_isSelected;
    _isSelectedSchedaul = !_isSelectedSchedaul;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (context) => HomeScreenVeiwMdel(),
      child: Consumer<HomeScreenVeiwMdel>(
        builder: (context, model, child) {
          return DefaultTabController(
            length: 4, // Number of tabs
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: transparentColor,
                title: Text("Home Screen jhgvs"), // Optional AppBar Title
              ),
              body: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  // TabBar outside of AppBar
                  Container(
                    decoration: BoxDecoration(
                        color: transparentColor.withOpacity(0.10),
                        border:
                            Border.all(color: borderColor.withOpacity(0.20)),
                        borderRadius: BorderRadius.circular(56)),
                    width: screenWidth * 0.88,
                    child: TabBar(
                      tabs: [
                        GestureDetector(
                          // onTap: () {
                          //   onClick();
                          // },
                          child: Container(
                              width: screenWidth * 1,
                              decoration: BoxDecoration(
                                  //color: Color(0xffffffff),
                                  color: _isSelected
                                      ? Color(0xffffffff)
                                      : Color(0000),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Tab(child: Text("Tab 1"))),
                        ),
                        Tab(child: Text("Tab 2")),
                        Tab(child: Text("Tab 3")),
                        Tab(child: Text("Tab four")),
                      ],
                    ),
                  ),
                  // TabBarView
                  Expanded(
                    child: TabBarView(
                      children: [
                        ///
                        ///
                        ///
                        ///         first tab bnar view
                        ///
                        ///
                        ///
                        SingleChildScrollView(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                20.verticalSpace,
                                Text(
                                  "Matchess",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                                10.verticalSpace,
                                SizedBox(
                                  height: screenHeight * 0.23,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: model.listMatches.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.only(right: 12),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: CustomHomeMatcheswidget(
                                              Object_homeMatches:
                                                  model.listMatches[index]),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                20.verticalSpace,
                                //////
                                //////
                                //////              Groups
                                ///
                                ///
                                Text(
                                  "Groups",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),

                                10.verticalSpace,
                                //
                                // grid view builder start for groups
                                //
                                GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          childAspectRatio: 1.5),
                                  itemCount: model.listHomeGroups.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {},
                                      child: CustomHomeGroupsWidget(
                                          Object_homeGroups:
                                              model.listHomeGroups[index]),
                                    );
                                  },
                                ),
                                SizedBox(height: 42),
                                //
                                //
                                //              after groups local events strat
                                //
                                //
                                SizedBox(
                                  height: 315.h,
                                  child: ListView.builder(
                                    itemCount: model.listHomeLocaLEVents.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: CustomLocalEventsWidget(
                                              Object_LocalEventModel: model
                                                  .listHomeLocaLEVents[index]),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),

                                ///
                                ///
                                ///       comment section here
                                ///
                                ///
                                Text("add comment section here "),
                                SizedBox(
                                  height: 15,
                                ),
                                ////
                                ///
                                ///
                                ///             Explore more Button
                                ///
                                ///
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 60.h,
                                          width: screenWidth * 0.9,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: borderColor
                                                      .withOpacity(0.20)),
                                              color: _isSelectedSchedaul
                                                  ? transparentColor
                                                  : Color(0xfff),
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Center(
                                            child: Text(
                                              "Explore More",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),

                                ///
                                //////
                                ///           refreash button
                                ///
                                ///
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 60.h,
                                      width: 130.w,
                                      decoration: BoxDecoration(
                                          color: buttonColor,
                                          // color: _isSelectedSchedaul
                                          //     ? buttonColor
                                          //     : Color(0xfff),
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.refresh_rounded,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 15.w),
                                          Text(
                                            "Refreash",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60.h,
                                )
                              ],
                            ),
                          ),
                        ),

                        ///
                        ///
                        ///       others 3 vtab bar veiw
                        ///
                        ///
                        Center(child: Text("Content for Tab 2")),
                        Center(child: Text("Content for Tab 3")),
                        Center(child: Text("Content for Tab 4")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
