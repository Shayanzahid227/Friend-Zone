import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/model/dashbord_Score_model.dart';
import 'package:code_structure/core/model/nearby_matches_model.dart';
import 'package:code_structure/core/model/schedual_meetups.dart';
import 'package:code_structure/core/model/up_coming_activities.dart';
import 'package:code_structure/core/others/base_view_model.dart';

class HomeScreenVeiwModel extends BaseViewModel {
  List<DashBordCompatitbiltyScoreModel> listcompatibilityscore = [
    DashBordCompatitbiltyScoreModel(
        imgUrl: AppAssets().score1,
        tiitle: "shayan zahid",
        subTittle: "shayan zahid"),
    DashBordCompatitbiltyScoreModel(
        imgUrl: AppAssets().score1,
        tiitle: "shayan zahid",
        subTittle: "shayan zahid"),
    DashBordCompatitbiltyScoreModel(
        imgUrl: AppAssets().score1,
        tiitle: "shayan zahid",
        subTittle: "shayan zahid"),
    DashBordCompatitbiltyScoreModel(
        imgUrl: AppAssets().score1,
        tiitle: "shayan zahid",
        subTittle: "shayan zahid"),
    DashBordCompatitbiltyScoreModel(
        imgUrl: AppAssets().score1,
        tiitle: "shayan zahid",
        subTittle: "shayan zahid")
  ];

  List<NearbyMatchesModel> listNearbyMatches = [
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        groupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        groupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        groupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        groupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        groupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
  ];

  List<UpComingActivities> upComingActivites = [
    UpComingActivities(
        imgUrl: AppAssets().schedual1,
        title: "Beach Volleyball",
        dateAndTime: "Monday, 5:00 PM"),
    UpComingActivities(
        imgUrl: AppAssets().schedual1,
        title: "Cooking Class",
        dateAndTime: "Wednesday, 6:00 PM"),
    UpComingActivities(
        imgUrl: AppAssets().schedual1,
        title: "Yoga Session",
        dateAndTime: "Thursday, 6:00 PM"),
  ];

  List<SchedualMeetupsModel> listSchedualMeetups = [
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        title: "Shayanz zahid",
        dateAndTime: "Monday, 5:00 PM"),
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        title: "Shayanz zahid",
        dateAndTime: "Wednesday, 5:00 PM"),
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        title: "Shayanz zahid",
        dateAndTime: "Thursday, 5:00 PM"),
  ];
}
