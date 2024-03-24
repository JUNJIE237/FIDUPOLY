import '../../../core/app_export.dart';

/// This class is used in the [leadershipboard_item_widget] screen.
class LeadershipboardItemModel {
  LeadershipboardItemModel({
    this.ellipse,
    this.id,
  }) {
    ellipse = ellipse ?? ImageConstant.imgEllipse14;
    id = id ?? "";
  }

  String? ellipse;

  String? id;
}
