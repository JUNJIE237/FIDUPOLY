import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/leadership_board_model.dart';
import '../models/leadershipboard_item_model.dart';

/// A provider class for the LeadershipBoardScreen.
///
/// This provider manages the state of the LeadershipBoardScreen, including the
/// current leadershipBoardModelObj
class LeadershipBoardProvider extends ChangeNotifier {
  LeadershipBoardModel leadershipBoardModelObj = LeadershipBoardModel();

  @override
  void dispose() {
    super.dispose();
  }
}
