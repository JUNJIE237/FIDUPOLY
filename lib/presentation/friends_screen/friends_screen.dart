import 'package:fidupoly2/widgets/custom_elevated_button.dart';
import 'models/friends_model.dart';
import 'package:flutter/material.dart';
import 'package:fidupoly2/core/app_export.dart';
import 'provider/friends_provider.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FriendsScreenState createState() => FriendsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FriendsProvider(),
      child: FriendsScreen(),
    );
  }
}

class FriendsScreenState extends State<FriendsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSeventySix(context),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 700.v,
                  width: 390.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 21.h,
                            vertical: 32.v,
                          ),
                          decoration:
                              AppDecoration.gradientIndigoToBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 3.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18.h,
                                  vertical: 19.v,
                                ),
                                decoration: AppDecoration
                                    .gradientPrimaryToBlueGrayF
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse1454x52,
                                      width: 52.h,
                                      margin: EdgeInsets.only(bottom: 21.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 9.h,
                                        top: 6.v,
                                        bottom: 28.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.h),
                                            child: Text(
                                              "lbl_fei_cai".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                          Text(
                                            "lbl_joined_1h_ago".tr,
                                            style: CustomTextStyles
                                                .labelMediumBold11,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 39.v),
                              Container(
                                margin: EdgeInsets.only(left: 5.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18.h,
                                  vertical: 19.v,
                                ),
                                decoration: AppDecoration
                                    .gradientPrimaryToBlueGrayF
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse141,
                                      width: 52.h,
                                      radius: BorderRadius.circular(
                                        27.h,
                                      ),
                                      margin: EdgeInsets.only(bottom: 21.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 8.h,
                                        bottom: 28.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text(
                                              "lbl_phoebe".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                          SizedBox(height: 5.v),
                                          Text(
                                            "lbl_joined_3h_ago".tr,
                                            style: CustomTextStyles
                                                .labelMediumBold11,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 39.v),
                              Container(
                                margin: EdgeInsets.only(left: 5.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18.h,
                                  vertical: 19.v,
                                ),
                                decoration: AppDecoration
                                    .gradientPrimaryToBlueGrayF
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse142,
                                      width: 52.h,
                                      radius: BorderRadius.circular(
                                        27.h,
                                      ),
                                      margin: EdgeInsets.only(bottom: 21.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 7.h,
                                        bottom: 28.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text(
                                              "lbl_sana".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                          SizedBox(height: 5.v),
                                          Text(
                                            "lbl_joined_6h_ago".tr,
                                            style: CustomTextStyles
                                                .labelMediumBold11,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 39.v),
                            ],
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        width: 325.h,
                        text: "lbl_invite".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientTealToBlueGrayTL31Decoration,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 134.v,
            width: 270.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape,
                  height: 134.v,
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 43.v),
                    child: Text(
                      "lbl_friends".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 34.v,
              bottom: 78.v,
            ),
          ),
        ],
      ),
    );
  }
}
