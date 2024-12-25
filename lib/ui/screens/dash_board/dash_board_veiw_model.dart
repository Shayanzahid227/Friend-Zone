import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/core/model/dashbord_Score_model.dart';
import 'package:code_structure/core/model/nearby_matches_model.dart';
import 'package:code_structure/core/model/schedual_meetups.dart';
import 'package:code_structure/core/others/base_view_model.dart';

class DashBoardVeiwModel extends BaseViewModel {
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
        GroupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        GroupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        GroupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        GroupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
    NearbyMatchesModel(
        imgUrl: AppAssets().nearby1,
        GroupName: "Hiking Group",
        time: "10:am",
        day: "sunday",
        message: "join us for  a local hike"),
  ];
  List<SchedualMeetupsModel> listSchedualMeetups = [
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        tiitle: "Shayanz zahid",
        subtittle: "shayan zahid"),
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        tiitle: "Shayanz zahid",
        subtittle: "shayan zahid"),
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        tiitle: "Shayanz zahid",
        subtittle: "shayan zahid"),
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        tiitle: "Shayanz zahid",
        subtittle: "shayan zahid"),
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        tiitle: "Shayanz zahid",
        subtittle: "shayan zahid"),
    SchedualMeetupsModel(
        imgUrl: AppAssets().schedual1,
        tiitle: "Shayanz zahid",
        subtittle: "shayan zahid")
  ];
}
