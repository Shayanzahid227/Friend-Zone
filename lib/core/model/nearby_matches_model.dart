import 'package:code_structure/core/others/base_view_model.dart';

class NearbyMatchesModel extends BaseViewModel {
  String? imgUrl;
  String? GroupName;
  String? day;
  String? time;
  String? message;
  NearbyMatchesModel(
      {this.imgUrl, this.GroupName, this.day, this.time, this.message});
}
