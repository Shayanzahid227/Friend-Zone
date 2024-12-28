// ignore_for_file: deprecated_member_use

import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';

import 'package:code_structure/custom_widgets/friend_zone/compatibility_score.dart';
import 'package:code_structure/custom_widgets/friend_zone/nearby_matches.dart';

import 'package:code_structure/custom_widgets/friend_zone/schedual_meetups.dart';
import 'package:code_structure/custom_widgets/friend_zone/shrink_button.dart';
import 'package:code_structure/ui/screens/dash_board/dash_board_veiw_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  bool _isSelectedSchedaul = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onClick() {
    _isSelectedSchedaul = !_isSelectedSchedaul;
    //ChangeNotifier();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (context) => DashBoardVeiwModel(),
      child: Consumer<DashBoardVeiwModel>(
          builder: (context, model, child) => Scaffold(
                backgroundColor: Colors.white,
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 15,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: authFieldDecoration.copyWith(
                              prefixIcon: Icon(Icons.search_sharp),
                              hintText:
                                  "Search for friends,Groups or Events...",
                              fillColor: Color(0xfff25397e % 15),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: Color(0xffffafbff))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffffafbff % 10)),
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        Text(
                          "Yor Dashboard",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        Text(
                          "Yor Dashboard",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        model.listcompatibilityscore.isNotEmpty
                            ? SizedBox(
                                height: 187,
                                width: double.infinity,
                                child: ListView.builder(
                                  itemCount:
                                      model.listcompatibilityscore.length ?? 0,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: GestureDetector(
                                          onTap: () {},
                                          child: CustomCompatibilityScorewidget(
                                              object_CompitableScore:
                                                  model.listcompatibilityscore[
                                                      index])),
                                    );
                                  },
                                ),
                              )
                            : Text("List is Empty"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nearby Matches",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "see All",
                                  style: TextStyle(
                                      color: Color(0xfff123cc9),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                        model.listcompatibilityscore.isNotEmpty
                            ? SizedBox(
                                height: screenheight * 0.4,
                                width: screenWidth * 0.9,
                                child: ListView.builder(
                                  itemCount:
                                      model.listNearbyMatches.length ?? 0,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: CustomNearbyMatchesWidget(
                                            Object_nearbyMatches:
                                                model.listNearbyMatches[index]),
                                      ),
                                    );
                                  },
                                ),
                              )
                            : Text("list is empty"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Upcoming Activities",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "see All",
                                  style: TextStyle(
                                      color: Color(0xfff123cc9),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Schedual Meetups",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "see All",
                                  style: TextStyle(
                                      color: Color(0xfff123cc9),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                        model.listSchedualMeetups.isNotEmpty
                            ? SizedBox(
                                height: screenheight * 0.31,
                                width: double.infinity,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: model.listSchedualMeetups.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: CustomScheduleMeetUpsWidget(
                                            Object_scgedualMeetUps: model
                                                .listSchedualMeetups[index]),
                                      ),
                                    );
                                  },
                                ),
                              )
                            : Text(
                                "list is epmty",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Colors.black),
                              ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: screenheight * 0.08,
                            width: screenWidth * 0.37,
                            decoration: BoxDecoration(
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                Text(
                                  "New Group",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  // onClick();
                                  //_isSelected = _isSelected;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: screenheight * 0.09,
                                    width: screenWidth * 0.45,
                                    decoration: BoxDecoration(
                                        color: _isSelectedSchedaul
                                            ? buttonColor
                                            : Color(0x00000fff),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          size: 40,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Schedual Events",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: GestureDetector(
                            onTap: () {
                              () {
                                // onClick();
                              };
                            },
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: screenheight * 0.07,
                                    width: screenWidth * 0.8,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color:
                                                borderColor.withOpacity(0.20)),
                                        color: _isSelectedSchedaul
                                            ? transparentColor
                                            : Color(0x00000fff),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                      child: Text(
                                        "Interact ith AI Assitant",
                                        style: GoogleFonts.nunito(
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
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
