import 'package:code_structure/core/constants/colors.dart';

import 'package:code_structure/ui/screens/home_screen/home_tabs/matches_tab.dart';
import 'package:code_structure/ui/screens/home_screen/home_view_model.dart';

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
      create: (context) => HomeScreenViewModel(),
      child: Consumer<HomeScreenViewModel>(
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
                        borderRadius: BorderRadius.circular(57)),
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
                                      : Color(0x00000000),
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
                        /// first tab --> i call the screen here to see click on it
                        ///
                        MatchesTab(),

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
