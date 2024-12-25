import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/model/home_groups.dart';
import 'package:code_structure/core/model/home_matches.dart';
import 'package:code_structure/core/model/local_events.dart';
import 'package:code_structure/core/others/base_view_model.dart';

class HomeScreenVeiwMdel extends BaseViewModel {
  ///
  ///
  ///            home screen matches view
  ///
  ///
  List<HomeMatchesModel> listMatches = [
    HomeMatchesModel(
        ImgUrl: AppAssets().match1, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match2, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match1, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match2, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match1, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match2, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match1, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match2, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match1, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match2, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match1, name: "shayan zahid", location: "Mardan"),
    HomeMatchesModel(
        ImgUrl: AppAssets().match2, name: "shayan zahid", location: "Mardan"),
  ];

  ///
  ///
  ///
  ///            home screen Groups view
  ///
  ///
  List<HomeGroupsModel> listHomeGroups = [
    HomeGroupsModel(imgUrl: AppAssets().group1),
    HomeGroupsModel(imgUrl: AppAssets().group1),
    HomeGroupsModel(imgUrl: AppAssets().group1),
    HomeGroupsModel(imgUrl: AppAssets().group1),
    HomeGroupsModel(imgUrl: AppAssets().group1),
    HomeGroupsModel(imgUrl: AppAssets().group1),
  ];

  ///
  ///
  ///
  ///             home screen events view
  ///
  ///
  List<HomeLocalEventsModel> listHomeLocaLEVents = [
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
    HomeLocalEventsModel(
        MainImgUrl: AppAssets().localevents,
        profileImgUrl: AppAssets().FB,
        title: "Local Events",
        day: "Monday",
        time: "5 PM",
        className: "Cooking Class",
        discription: "join us for fun and ....."),
  ];
}
