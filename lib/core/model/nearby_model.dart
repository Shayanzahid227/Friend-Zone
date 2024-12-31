import 'package:code_structure/core/others/base_view_model.dart';

class NearbyScreenModel extends BaseViewModel {
  String? imgUrl;
  String? GroupName;
  String? day;
  String? time;
  String? message;
  NearbyScreenModel(
      {this.imgUrl, this.GroupName, this.day, this.time, this.message});
}
