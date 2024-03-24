import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/game_model.dart';

/// A provider class for the GameScreen.
///
/// This provider manages the state of the GameScreen, including the
/// current gameModelObj

// ignore_for_file: must_be_immutable
class GameProvider extends ChangeNotifier {
  TextEditingController icsharprealestateagentController =
      TextEditingController();

  TextEditingController financialPlanningController = TextEditingController();

  GameModel gameModelObj = GameModel();

  @override
  void dispose() {
    super.dispose();
    icsharprealestateagentController.dispose();
    financialPlanningController.dispose();
  }
}
