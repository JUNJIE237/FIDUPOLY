import 'package:fidupoly2/widgets/custom_text_form_field.dart';
import 'package:fidupoly2/widgets/custom_elevated_button.dart';
import 'models/game_roll_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:fidupoly2/core/app_export.dart';
import 'provider/game_roll_seven_provider.dart';

class GameRollSevenScreen extends StatefulWidget {
  const GameRollSevenScreen({Key? key}) : super(key: key);

  @override
  GameRollSevenScreenState createState() => GameRollSevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GameRollSevenProvider(),
        child: GameRollSevenScreen());
  }
}

class GameRollSevenScreenState extends State<GameRollSevenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNinetyTwo(context),
                      SizedBox(height: 19.v),
                      SizedBox(
                          height: 715.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle40,
                                    width: 178.h,
                                    alignment: Alignment.bottomCenter,
                                    margin: EdgeInsets.only(bottom: 10.v)),
                                _buildThirtyFour(context),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle42,
                                    height: 128.adaptSize,
                                    width: 128.adaptSize,
                                    alignment: Alignment.bottomCenter,
                                    margin: EdgeInsets.only(bottom: 18.v)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            left: 157.h,
                                            right: 144.h,
                                            bottom: 33.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24.h, vertical: 36.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup20),
                                                fit: BoxFit.cover)),
                                        child: Text("lbl_roll".tr,
                                            style:
                                                theme.textTheme.displaySmall))),
                                _buildGameLayout(context),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            left: 22.h, right: 18.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.h, vertical: 10.v),
                                        decoration: AppDecoration
                                            .gradientIndigoToBluegray80001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  width: 348.h,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 17.h),
                                                  child: Text(
                                                      "msg_congratulations".tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .titleSmallExtraBold
                                                          .copyWith(
                                                              height: 1.37))),
                                              SizedBox(height: 17.v),
                                              _buildA(context),
                                              SizedBox(height: 34.v),
                                              _buildA1(context),
                                              SizedBox(height: 46.v),
                                              _buildB(context),
                                              SizedBox(height: 99.v)
                                            ])))
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return SizedBox(
        height: 134.v,
        width: 375.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShape,
              height: 134.v,
              alignment: Alignment.centerLeft),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(left: 75.h, top: 34.v, bottom: 54.v),
                  padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 5.v),
                  decoration: AppDecoration.gradientBlueGrayToTeal
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder23),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Spacer(flex: 43),
                        Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text("lbl_0".tr,
                                style: CustomTextStyles
                                    .titleLargeOnPrimaryContainer)),
                        Spacer(flex: 56),
                        CustomImageView(
                            imagePath: ImageConstant.imgFxemojiBattery,
                            height: 36.adaptSize,
                            width: 36.adaptSize),
                        Container(
                            height: 23.v,
                            width: 76.h,
                            margin: EdgeInsets.only(top: 8.v, bottom: 4.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 1.v),
                                      decoration: AppDecoration.fillLightBlueA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Container(
                                          height: 17.v,
                                          width: 66.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.blueGray100,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      8.h))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_4".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold))
                            ]))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgMoney,
              width: 47.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 85.h, top: 34.v))
        ]));
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 79.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 14.h),
                      decoration: AppDecoration.gradientTealToBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder36),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Spacer(flex: 53),
                            Padding(
                                padding: EdgeInsets.only(top: 14.v),
                                child: _buildNinetySix(context,
                                    lock: ImageConstant.imgTicket,
                                    friends: "lbl_wins".tr)),
                            Spacer(flex: 46),
                            Padding(
                                padding: EdgeInsets.only(top: 14.v),
                                child: _buildNinetySix(context,
                                    lock: ImageConstant.imgLock,
                                    friends: "lbl_friends".tr, onTapLock: () {
                                  onTapLock(context);
                                })),
                            Container(
                                height: 63.v,
                                width: 86.h,
                                margin: EdgeInsets.only(left: 4.h, top: 14.v),
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("lbl_leaderboard".tr,
                                              style: CustomTextStyles
                                                  .labelLargeSemiBold12)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUserOnprimarycontainer,
                                          height: 46.v,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(right: 12.h),
                                          onTap: () {
                                            onTapImgUser(context);
                                          })
                                    ]))
                          ]))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Text("lbl_characters".tr,
                          style: CustomTextStyles.labelLargeSemiBold))),
              CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 46.v,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 39.h, top: 14.v))
            ])));
  }

  /// Section Widget
  Widget _buildFinancialPlanning(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 68.v),
        child: Selector<GameRollSevenProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.financialPlanningController,
            builder: (context, financialPlanningController, child) {
              return CustomTextFormField(
                  width: 67.h,
                  controller: financialPlanningController,
                  hintText: "msg_financial_planning".tr,
                  alignment: Alignment.topLeft,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(6.h, 28.v, 19.h, 30.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup,
                          height: 28.adaptSize,
                          width: 28.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 89.v),
                  contentPadding: EdgeInsets.only(left: 2.h));
            }));
  }

  /// Section Widget
  Widget _buildIcsharprealestateagent(BuildContext context) {
    return Selector<GameRollSevenProvider, TextEditingController?>(
        selector: (context, provider) =>
            provider.icsharprealestateagentController,
        builder: (context, icsharprealestateagentController, child) {
          return CustomTextFormField(
              width: 67.h,
              controller: icsharprealestateagentController,
              hintText: "lbl_estate_planning".tr,
              textInputAction: TextInputAction.done,
              alignment: Alignment.topCenter,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(-49.h, 21.v, 23.h, 30.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcsharprealestateagent,
                      height: 28.adaptSize,
                      width: 28.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 82.v),
              contentPadding: EdgeInsets.only(left: 2.h));
        });
  }

  /// Section Widget
  Widget _buildGameLayout(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 56.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      height: 405.adaptSize,
                      width: 405.adaptSize,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 90.v,
                                width: 67.h,
                                decoration: BoxDecoration(
                                    color: appTheme.lightGreen500))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin: EdgeInsets.only(right: 337.h),
                                decoration:
                                    AppDecoration.gradientIndigoToPrimary,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 66.v),
                                      Divider()
                                    ]))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 90.v,
                                width: 67.h,
                                margin: EdgeInsets.only(top: 67.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    boxShadow: [
                                      BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.25),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(0, 1))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                margin:
                                    EdgeInsets.only(right: 337.h, bottom: 67.v),
                                decoration: AppDecoration.fillPrimary1,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 88.v),
                                      Divider()
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                height: 67.adaptSize,
                                width: 67.adaptSize,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment(0.38, 0.05),
                                        end: Alignment(0.87, 0.41),
                                        colors: [
                                      theme.colorScheme.primary,
                                      appTheme.lime400
                                    ])))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                height: 67.v,
                                width: 90.h,
                                margin: EdgeInsets.only(left: 67.h),
                                decoration:
                                    BoxDecoration(color: appTheme.lime400))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                margin:
                                    EdgeInsets.only(left: 337.h, bottom: 67.v),
                                decoration: AppDecoration.fillLightGreen,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 88.v),
                                      Divider()
                                    ]))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                height: 67.adaptSize,
                                width: 67.adaptSize,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment(0, 0.4),
                                        end: Alignment(0.22, 0.11),
                                        colors: [
                                      appTheme.lime400,
                                      appTheme.lightGreen50001,
                                      appTheme.lightGreen800
                                    ])))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                height: 67.v,
                                width: 90.h,
                                margin: EdgeInsets.only(right: 67.h),
                                decoration:
                                    BoxDecoration(color: appTheme.lime400))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 67.v,
                                width: 90.h,
                                decoration:
                                    BoxDecoration(color: appTheme.lime400))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 90.v,
                                width: 67.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 67.v,
                                width: 90.h,
                                margin: EdgeInsets.only(left: 67.h),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment(0.8, 0.4),
                                        end: Alignment(-0.1, 0.87),
                                        colors: [
                                      appTheme.lightGreen800,
                                      appTheme.blueGray50001,
                                      theme.colorScheme.primary
                                    ])))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 67.v,
                                width: 90.h,
                                margin: EdgeInsets.only(right: 67.h),
                                decoration: BoxDecoration(
                                    color: appTheme.lightGreen800))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                margin: EdgeInsets.only(left: 337.h),
                                decoration:
                                    AppDecoration.gradientLimeToLightGreen,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 66.v),
                                      Divider()
                                    ]))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 67.v,
                                width: 90.h,
                                decoration: BoxDecoration(
                                    color: appTheme.lightGreen800))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 90.v,
                                width: 67.h,
                                margin: EdgeInsets.only(top: 67.v),
                                decoration: BoxDecoration(
                                    color: appTheme.lightGreen500))),
                        CustomImageView(
                            imagePath: ImageConstant.img31649592023030,
                            height: 270.adaptSize,
                            width: 270.adaptSize,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 66.v),
                                child:
                                    SizedBox(width: 270.h, child: Divider()))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 66.v),
                                child:
                                    SizedBox(width: 270.h, child: Divider()))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(right: 18.h, bottom: 11.v),
                                child: Text("lbl_start".tr,
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainerExtraBold))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                height: 1.v,
                                width: 67.h,
                                margin: EdgeInsets.only(bottom: 66.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 67.h, child: Divider())),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 1.v,
                                              width: 67.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            width: 67.h,
                                                            child: Divider())),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            width: 67.h,
                                                            child: Divider()))
                                                  ])))
                                    ]))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(top: 67.v),
                                child:
                                    SizedBox(width: 67.h, child: Divider()))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 66.v),
                                child:
                                    SizedBox(width: 67.h, child: Divider()))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(width: 405.h, child: Divider())),
                        _buildTwentyEight(context),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: 404.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: 404.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(width: 404.h, child: Divider())),
                        Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                                height: 67.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 66.h),
                                child: SizedBox(
                                    height: 270.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 67.h),
                                child: SizedBox(
                                    height: 270.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 66.h),
                                child: SizedBox(
                                    height: 67.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 67.h),
                                child: SizedBox(
                                    height: 67.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 156.h),
                                child: SizedBox(
                                    height: 67.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 157.h),
                                child: SizedBox(
                                    height: 66.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 67.h),
                                child: SizedBox(
                                    height: 66.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Padding(
                            padding: EdgeInsets.only(right: 156.h),
                            child: _buildTwentyEight(context)),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 68.h),
                                child: SizedBox(
                                    height: 67.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 68.h),
                                child: SizedBox(
                                    height: 67.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 67.h),
                                child: SizedBox(
                                    height: 68.v,
                                    child: VerticalDivider(
                                        width: 1.h,
                                        thickness: 1.v,
                                        indent: 1.h)))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 157.h),
                                child: SizedBox(
                                    height: 67.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgSimpleIconsGocd,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            alignment: Alignment.bottomRight),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child:
                                    SizedBox(width: 404.h, child: Divider()))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(width: 404.h, child: Divider())),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: SizedBox(
                                height: 72.v,
                                width: 69.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("lbl_chance".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgVector,
                                          height: 49.v,
                                          alignment: Alignment.bottomRight)
                                    ]))),
                        Align(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 336.v,
                                      width: 69.h,
                                      margin: EdgeInsets.only(bottom: 63.v),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 2.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text("lbl_chance".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          SizedBox(
                                                              height: 11.v),
                                                          SizedBox(
                                                              width: 67.h,
                                                              child: Divider())
                                                        ]))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.h, right: 22.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(
                                                              width: 41.h,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_credit_score"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelSmall),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgMaterialSymbol,
                                                                        height: 28
                                                                            .adaptSize,
                                                                        width: 28
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            top:
                                                                                16.v,
                                                                            bottom: 14.v))
                                                                  ])),
                                                          SizedBox(
                                                              height: 20.v),
                                                          SizedBox(
                                                              width: 42.h,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "msg_financial_account"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelSmall),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgMdiAccount,
                                                                        height: 28
                                                                            .adaptSize,
                                                                        width: 28
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            top:
                                                                                25.v,
                                                                            bottom: 29.v))
                                                                  ]))
                                                        ]))),
                                            _buildFinancialPlanning(context),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector,
                                                height: 49.v,
                                                alignment: Alignment.topRight,
                                                margin:
                                                    EdgeInsets.only(top: 20.v)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 5.h,
                                                        bottom: 51.v),
                                                    child: Text(
                                                        "msg_financial_foundation"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .labelLargeGray200)))
                                          ])),
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Row(children: [
                                          Text("msg_investment_portfolio".tr,
                                              style: CustomTextStyles
                                                  .poppinsOnPrimaryContainer),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 27.h),
                                              child: Text("lbl_insurance".tr,
                                                  style: CustomTextStyles
                                                      .poppinsOnPrimaryContainer)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 29.h),
                                              child: Text(
                                                  "lbl_emergency_fund".tr,
                                                  style: CustomTextStyles
                                                      .poppinsOnPrimaryContainer))
                                        ]),
                                        SizedBox(height: 3.v),
                                        Container(
                                            width: 209.h,
                                            margin: EdgeInsets.only(
                                                left: 27.h, right: 97.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgUser,
                                                  height: 28.adaptSize,
                                                  width: 28.adaptSize),
                                              Spacer(flex: 49),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgMapInsuranceAgency,
                                                  height: 28.adaptSize,
                                                  width: 28.adaptSize),
                                              Spacer(flex: 50),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgMedicalIconIEmergency,
                                                  height: 28.adaptSize,
                                                  width: 28.adaptSize)
                                            ])),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 68.h),
                                            child: Text(
                                                "lbl_long_term_goals".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        SizedBox(height: 7.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 30.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          height: 43.v,
                                                          width: 28.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 281.v),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Text(
                                                                        "lbl_tax"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgTablerCoinFilled,
                                                                    height: 28
                                                                        .adaptSize,
                                                                    width: 28
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter)
                                                              ])),
                                                      Container(
                                                          height: 93.v,
                                                          width: 191.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 13.h,
                                                                  top: 230.v),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right: 14
                                                                                .h),
                                                                        child: Text(
                                                                            "lbl_job_offer"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.labelMedium))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 24
                                                                                .h),
                                                                        child: Text(
                                                                            "lbl_rental_house"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.labelMedium))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top: 33
                                                                                .v),
                                                                        child: Text(
                                                                            "lbl_new_beginnings"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.labelLarge))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgCalendar,
                                                                    height: 28
                                                                        .adaptSize,
                                                                    width: 28
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    margin: EdgeInsets.only(
                                                                        right: 26
                                                                            .h,
                                                                        bottom:
                                                                            17.v)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgHome,
                                                                    height: 28
                                                                        .adaptSize,
                                                                    width: 28
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    margin: EdgeInsets.only(
                                                                        left: 46
                                                                            .h,
                                                                        bottom:
                                                                            14.v)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img0033,
                                                                    height: 77
                                                                        .adaptSize,
                                                                    width: 77
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight)
                                                              ])),
                                                      Container(
                                                          height: 259.v,
                                                          width: 67.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 4.h,
                                                                  bottom: 64.v),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right: 2
                                                                                .h),
                                                                        child: Text(
                                                                            "msg_retirement_planning"
                                                                                .tr,
                                                                            style:
                                                                                CustomTextStyles.poppinsOnPrimaryContainerMedium))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: SizedBox(
                                                                        height: 184.v,
                                                                        width: 67.h,
                                                                        child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomRight,
                                                                              child: Padding(padding: EdgeInsets.only(right: 3.h, bottom: 14.v), child: Text("msg_financial_independence".tr, style: CustomTextStyles.poppinsOnPrimaryContainerMedium6))),
                                                                          Align(
                                                                              alignment: Alignment.bottomLeft,
                                                                              child: Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_securing_future".tr, style: theme.textTheme.labelLarge))),
                                                                          _buildIcsharprealestateagent(
                                                                              context),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMaterialSymbolsFinanceMode,
                                                                              height: 28.adaptSize,
                                                                              width: 28.adaptSize,
                                                                              alignment: Alignment.bottomRight,
                                                                              margin: EdgeInsets.only(right: 17.h, bottom: 43.v))
                                                                        ]))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgIcRoundWorkOff,
                                                                    height: 28
                                                                        .adaptSize,
                                                                    width: 28
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    margin: EdgeInsets.only(
                                                                        right: 17
                                                                            .h,
                                                                        bottom:
                                                                            32.v))
                                                              ]))
                                                    ])))
                                      ]))
                                ])),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 67.v),
                                child:
                                    SizedBox(width: 67.h, child: Divider()))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 157.v),
                                child:
                                    SizedBox(width: 67.h, child: Divider()))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(top: 157.v),
                                child:
                                    SizedBox(width: 67.h, child: Divider()))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 72.v,
                                width: 69.h,
                                margin: EdgeInsets.only(right: 1.h),
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Text("lbl_chance".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVector50x49,
                                          width: 49.h,
                                          alignment: Alignment.bottomLeft)
                                    ])))
                      ])),
                  SizedBox(
                      height: 404.v,
                      child: VerticalDivider(width: 1.h, thickness: 1.v)),
                  SizedBox(
                      height: 404.v,
                      child: VerticalDivider(
                          width: 1.h, thickness: 1.v, endIndent: 337.h))
                ])));
  }

  /// Section Widget
  Widget _buildA(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              SizedBox(
                  height: 280.v,
                  width: 357.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 21.h, top: 5.v, right: 5.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 58.v, bottom: 56.v),
                                        child: Text("lbl_a".tr,
                                            style:
                                                CustomTextStyles.labelLarge12)),
                                    Expanded(
                                        child: Container(
                                            width: 290.h,
                                            margin: EdgeInsets.only(left: 30.h),
                                            child: Text(
                                                "msg_position_senior".tr,
                                                maxLines: 8,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelLarge12
                                                    .copyWith(height: 1.37))))
                                  ]),
                                  SizedBox(height: 62.v),
                                  Text("lbl_b".tr,
                                      style: CustomTextStyles.labelLarge12)
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 280.v,
                            width: 357.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                          width: 280.h,
                                          margin: EdgeInsets.only(right: 15.h),
                                          child: Text(
                                              "msg_position_business".tr,
                                              maxLines: 8,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .labelLarge12
                                                  .copyWith(height: 1.37)))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 53.h),
                                          child: SizedBox(
                                              height: 280.v,
                                              child: VerticalDivider(
                                                  width: 1.h,
                                                  thickness: 1.v,
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer)))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: SizedBox(
                                              height: 280.v,
                                              child: VerticalDivider(
                                                  width: 1.h,
                                                  thickness: 1.v,
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer)))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          width: 356.h,
                                          child: Divider(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                          width: 356.h,
                                          child: Divider(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                          width: 356.h,
                                          child: Divider(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer)))
                                ])))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: SizedBox(
                      height: 280.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: theme.colorScheme.onPrimaryContainer)))
            ])));
  }

  /// Section Widget
  Widget _buildA1(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_a".tr,
        margin: EdgeInsets.only(left: 29.h, right: 28.h),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToLimeDecoration);
  }

  /// Section Widget
  Widget _buildB(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_b".tr,
        margin: EdgeInsets.only(left: 32.h, right: 25.h),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToLimeDecoration);
  }

  /// Common widget
  Widget _buildNinetySix(
    BuildContext context, {
    required String lock,
    required String friends,
    Function? onTapLock,
  }) {
    return SizedBox(
        height: 64.v,
        width: 57.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: lock,
              height: 46.v,
              alignment: Alignment.topCenter,
              onTap: () {
                onTapLock?.call();
              }),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text(friends,
                  style: CustomTextStyles.labelLargeSemiBold
                      .copyWith(color: theme.colorScheme.onPrimaryContainer)))
        ]));
  }

  /// Common widget
  Widget _buildTwentyEight(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: 67.v, child: VerticalDivider(width: 1.h, thickness: 1.v)),
          SizedBox(
              height: 67.v, child: VerticalDivider(width: 1.h, thickness: 1.v))
        ]);
  }

  /// Navigates to the friendsScreen when the action is triggered.
  onTapLock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.friendsScreen,
    );
  }

  /// Navigates to the leadershipBoardScreen when the action is triggered.
  onTapImgUser(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.leadershipBoardScreen,
    );
  }
}
