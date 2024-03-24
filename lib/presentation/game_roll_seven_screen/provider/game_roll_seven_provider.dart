import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/game_roll_seven_model.dart';

/// A provider class for the GameRollSevenScreen.
///
/// This provider manages the state of the GameRollSevenScreen, including the
/// current gameRollSevenModelObj

// ignore_for_file: must_be_immutable
class GameRollSevenProvider extends ChangeNotifier {
  TextEditingController financialPlanningController = TextEditingController();

  TextEditingController icsharprealestateagentController =
      TextEditingController();

  GameRollSevenModel gameRollSevenModelObj = GameRollSevenModel();

  @override
  void dispose() {
    super.dispose();
    financialPlanningController.dispose();
    icsharprealestateagentController.dispose();
  }
}
