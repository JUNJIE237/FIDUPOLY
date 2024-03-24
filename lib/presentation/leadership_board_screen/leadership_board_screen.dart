import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'widgets/leadershipboard_item_widget.dart';
import 'models/leadershipboard_item_model.dart';
import 'models/leadership_board_model.dart';
import 'package:fidupoly2/widgets/app_bar/custom_app_bar.dart';
import 'package:fidupoly2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter/material.dart';
import 'package:fidupoly2/core/app_export.dart';
import 'provider/leadership_board_provider.dart';

class LeadershipBoardScreen extends StatefulWidget {
  const LeadershipBoardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LeadershipBoardScreenState createState() => LeadershipBoardScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LeadershipBoardProvider(),
      child: LeadershipBoardScreen(),
    );
  }
}

class LeadershipBoardScreenState extends State<LeadershipBoardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 412.h,
          margin: EdgeInsets.only(right: 18.h),
          child: Column(
            children: [
              SizedBox(
                height: 496.v,
                width: 402.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 134.v,
                      alignment: Alignment.topLeft,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 61.v,
                          right: 91.h,
                        ),
                        child: Text(
                          "lbl_leaderboard".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse16,
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      radius: BorderRadius.circular(
                        36.h,
                      ),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 82.h),
                    ),
                    _buildLeadershipBoard(context),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 82.h,
                          right: 249.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.h,
                          vertical: 51.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 17.v),
                            Text(
                              "lbl_3".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 195.v,
                          right: 23.h,
                        ),
                        child: Text(
                          "lbl_albert_estein".tr,
                          style: CustomTextStyles.labelMediumBlack900,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 208.v,
                          right: 30.h,
                        ),
                        child: Text(
                          "lbl_4000_coins".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 200.h,
                          right: 139.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_peter_parker".tr,
                              style: CustomTextStyles.labelMediumBlack900,
                            ),
                            Text(
                              "lbl_3000_coins".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 90.h,
                          bottom: 182.v,
                        ),
                        child: Text(
                          "lbl_2000_coins".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 86.h,
                          bottom: 193.v,
                        ),
                        child: Text(
                          "lbl_chow_tzuyu".tr,
                          style: CustomTextStyles.labelMediumBlack900,
                        ),
                      ),
                    ),
                    _buildAppBar(context),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              _buildTwo(context),
              SizedBox(height: 22.v),
              _buildComponentNine(context),
              SizedBox(height: 23.v),
              _buildComponentTen(context),
              SizedBox(height: 21.v),
              _buildComponentEleven(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildComponentTwelve(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeadershipBoard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: Consumer<LeadershipBoardProvider>(
        builder: (context, provider, child) {
          return StaggeredGridView.countBuilder(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 2,
            crossAxisSpacing: 195.h,
            mainAxisSpacing: 195.h,
            staggeredTileBuilder: (index) {
              return StaggeredTile.fit(2);
            },
            itemCount:
                provider.leadershipBoardModelObj.leadershipboardItemList.length,
            itemBuilder: (context, index) {
              LeadershipboardItemModel model = provider
                  .leadershipBoardModelObj.leadershipboardItemList[index];
              return LeadershipboardItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(horizontal: 28.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(left: 22.h),
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1680x77,
                    width: 77.h,
                    radius: BorderRadius.circular(
                      40.h,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_tan_jun_jie".tr,
                    style: CustomTextStyles.labelMediumBold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                top: 23.v,
                bottom: 33.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_points".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_238".tr,
                    style: CustomTextStyles.labelLargeBold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 35.h,
                top: 23.v,
                bottom: 33.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_level".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_3".tr,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 56.h,
                top: 23.v,
                bottom: 33.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_position".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_258".tr,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentNine(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 34.h,
          right: 13.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 116.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_04".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    "lbl_mina".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 154.h,
                top: 5.v,
                bottom: 3.v,
              ),
              child: Text(
                "lbl_1388_points".tr,
                style: CustomTextStyles.labelLargeBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 34.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_05".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Text(
              "lbl_tim".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 177.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_1286_points".tr,
              style: CustomTextStyles.labelLargeBlack900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentEleven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 34.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_06".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_mark".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 149.h,
              top: 7.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_988_points".tr,
              style: CustomTextStyles.labelLargeBlack900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTwelve(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 34.h,
        right: 38.h,
        bottom: 53.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 113.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_07".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Text(
                  "lbl_mina".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_788_points".tr,
              style: CustomTextStyles.labelLargeBlack900,
            ),
          ),
        ],
      ),
    );
  }
}
