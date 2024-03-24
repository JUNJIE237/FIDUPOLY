import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/friends_model.dart';

/// A provider class for the FriendsScreen.
///
/// This provider manages the state of the FriendsScreen, including the
/// current friendsModelObj
class FriendsProvider extends ChangeNotifier {
  FriendsModel friendsModelObj = FriendsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
