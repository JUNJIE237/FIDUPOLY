import '../models/leadershipboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fidupoly2/core/app_export.dart';

// ignore: must_be_immutable
class LeadershipboardItemWidget extends StatelessWidget {
  LeadershipboardItemWidget(
    this.leadershipboardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LeadershipboardItemModel leadershipboardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: CustomImageView(
        imagePath: leadershipboardItemModelObj?.ellipse,
        width: 77.h,
        radius: BorderRadius.circular(
          40.h,
        ),
      ),
    );
  }
}
