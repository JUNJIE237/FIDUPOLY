import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/first_page_model.dart';

/// A provider class for the FirstPageScreen.
///
/// This provider manages the state of the FirstPageScreen, including the
/// current firstPageModelObj
class FirstPageProvider extends ChangeNotifier {
  FirstPageModel firstPageModelObj = FirstPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
