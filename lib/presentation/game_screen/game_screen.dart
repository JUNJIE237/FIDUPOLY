import 'package:fidupoly2/widgets/custom_text_form_field.dart';
import 'models/game_model.dart';
import 'package:flutter/material.dart';
import 'package:fidupoly2/core/app_export.dart';
import 'provider/game_provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  GameScreenState createState() => GameScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GameProvider(), child: GameScreen());
  }
}

class GameScreenState extends State<GameScreen> {
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
                child: Column(children: [
                  _buildSeventySeven(context),
                  SizedBox(height: 75.v),
                  _buildGameLayout(context),
                  SizedBox(height: 65.v),
                  _buildSeventyEight(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildSeventySeven(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
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
                      margin:
                          EdgeInsets.only(left: 75.h, top: 34.v, bottom: 54.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.h, vertical: 5.v),
                      decoration: AppDecoration.gradientBlueGrayToTeal.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder23),
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
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 1.v),
                                              decoration: AppDecoration
                                                  .fillLightBlueA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Container(
                                                  height: 17.v,
                                                  width: 66.h,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blueGray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.h))))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_8".tr,
                                              style: CustomTextStyles
                                                  .titleSmallSemiBold))
                                    ]))
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgMoney,
                  width: 47.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 85.h, top: 34.v))
            ])));
  }

  /// Section Widget
  Widget _buildGameLayout(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 405.adaptSize,
              width: 405.adaptSize,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 90.v,
                        width: 67.h,
                        decoration:
                            BoxDecoration(color: appTheme.lightGreen500))),
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
                        decoration: BoxDecoration(color: appTheme.lime400))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        margin: EdgeInsets.only(left: 337.h, bottom: 67.v),
                        decoration: AppDecoration.fillLightGreen,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [SizedBox(height: 88.v), Divider()]))),
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
                        decoration: BoxDecoration(color: appTheme.lime400))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 67.v,
                        width: 90.h,
                        decoration: BoxDecoration(color: appTheme.lime400))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: EdgeInsets.only(left: 337.h),
                        decoration: AppDecoration.gradientLimeToLightGreen,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [SizedBox(height: 66.v), Divider()]))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 90.v,
                        width: 67.h,
                        margin: EdgeInsets.only(top: 67.v),
                        decoration:
                            BoxDecoration(color: appTheme.lightGreen500))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 18.h, bottom: 11.v),
                        child: Text("lbl_start".tr,
                            style: CustomTextStyles
                                .titleMediumOnPrimaryContainerExtraBold))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 1.v,
                        width: 67.h,
                        margin: EdgeInsets.only(bottom: 66.v),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(width: 67.h, child: Divider())),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 1.v,
                                  width: 67.h,
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
                                                width: 67.h, child: Divider()))
                                      ])))
                        ]))),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                        padding: EdgeInsets.only(top: 67.v),
                        child: SizedBox(width: 67.h, child: Divider()))),
                Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(width: 405.h, child: Divider())),
                _buildTwentySeven(context),
                Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                        height: 404.v,
                        child: VerticalDivider(width: 1.h, thickness: 1.v))),
                Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                        height: 404.v,
                        child: VerticalDivider(width: 1.h, thickness: 1.v))),
                Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(width: 404.h, child: Divider())),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 66.h),
                        child: SizedBox(
                            height: 67.v,
                            child:
                                VerticalDivider(width: 1.h, thickness: 1.v)))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 67.h),
                        child: SizedBox(
                            height: 67.v,
                            child:
                                VerticalDivider(width: 1.h, thickness: 1.v)))),
                Padding(
                    padding: EdgeInsets.only(right: 156.h),
                    child: _buildTwentySeven(context)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 157.h),
                        child: SizedBox(
                            height: 67.v,
                            child:
                                VerticalDivider(width: 1.h, thickness: 1.v)))),
                CustomImageView(
                    imagePath: ImageConstant.imgSimpleIconsGocd,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    alignment: Alignment.bottomRight),
                CustomImageView(
                    imagePath: ImageConstant.img0033,
                    width: 72.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 13.v)),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: SizedBox(width: 404.h, child: Divider()))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(width: 404.h, child: Divider())),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                        height: 72.v,
                        width: 69.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("lbl_chance".tr,
                                  style: theme.textTheme.labelLarge)),
                          CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 49.v,
                              alignment: Alignment.bottomRight)
                        ]))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 86.h, bottom: 5.v),
                        child: Text("lbl_job_offer".tr,
                            style: theme.textTheme.labelMedium))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Text("lbl_rental_house".tr,
                            style: theme.textTheme.labelMedium))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 104.h, bottom: 5.v),
                        child: Text("lbl_tax".tr,
                            style: theme.textTheme.labelMedium))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 2.h, bottom: 69.v),
                        child: Text("msg_retirement_planning".tr,
                            style: CustomTextStyles
                                .poppinsOnPrimaryContainerMedium))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Text("msg_financial_independence".tr,
                            style: CustomTextStyles
                                .poppinsOnPrimaryContainerMedium6))),
                CustomImageView(
                    imagePath: ImageConstant.imgCalendar,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 98.h, bottom: 23.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 20.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgTablerCoinFilled,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 100.h, bottom: 19.v)),
                Padding(
                    padding: EdgeInsets.only(top: 75.v),
                    child: Selector<GameProvider, TextEditingController?>(
                        selector: (context, provider) =>
                            provider.icsharprealestateagentController,
                        builder:
                            (context, icsharprealestateagentController, child) {
                          return CustomTextFormField(
                              width: 67.h,
                              controller: icsharprealestateagentController,
                              hintText: "lbl_estate_planning".tr,
                              alignment: Alignment.topRight,
                              suffix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      -49.h, 21.v, 23.h, 30.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgIcsharprealestateagent,
                                      height: 28.adaptSize,
                                      width: 28.adaptSize)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 82.v),
                              contentPadding: EdgeInsets.only(left: 2.h));
                        })),
                CustomImageView(
                    imagePath: ImageConstant.imgMaterialSymbolsFinanceMode,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 17.h)),
                CustomImageView(
                    imagePath: ImageConstant.imgIcRoundWorkOff,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 17.h, bottom: 102.v)),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 72.v,
                        width: 69.h,
                        margin: EdgeInsets.only(right: 1.h),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Text("lbl_chance".tr,
                                  style: theme.textTheme.labelLarge)),
                          CustomImageView(
                              imagePath: ImageConstant.imgVector50x49,
                              width: 49.h,
                              alignment: Alignment.bottomLeft)
                        ]))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(right: 49.h),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 338.adaptSize,
                                    width: 338.adaptSize,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 271.h),
                                                  decoration: AppDecoration
                                                      .gradientIndigoToPrimary,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(height: 66.v),
                                                        Divider()
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height: 90.v,
                                                  width: 67.h,
                                                  margin: EdgeInsets.only(
                                                      top: 67.v),
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: appTheme
                                                                .black900
                                                                .withOpacity(
                                                                    0.25),
                                                            spreadRadius: 2.h,
                                                            blurRadius: 2.h,
                                                            offset:
                                                                Offset(0, 1))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 271.h,
                                                      bottom: 1.v),
                                                  decoration: AppDecoration
                                                      .fillPrimary1,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(height: 88.v),
                                                        Divider()
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  height: 90.v,
                                                  width: 67.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 91.v),
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .primary))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height: 67.v,
                                                  width: 90.h,
                                                  margin: EdgeInsets.only(
                                                      left: 67.h),
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                          begin: Alignment(
                                                              0.8, 0.4),
                                                          end: Alignment(
                                                              -0.1, 0.87),
                                                          colors: [
                                                        appTheme.lightGreen800,
                                                        appTheme.blueGray50001,
                                                        theme
                                                            .colorScheme.primary
                                                      ])))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 67.v,
                                                  width: 90.h,
                                                  margin: EdgeInsets.only(
                                                      right: 1.h),
                                                  decoration: BoxDecoration(
                                                      color: appTheme
                                                          .lightGreen800))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 67.v,
                                                  width: 90.h,
                                                  margin: EdgeInsets.only(
                                                      right: 91.h),
                                                  decoration: BoxDecoration(
                                                      color: appTheme
                                                          .lightGreen800))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .img31649592023030,
                                              height: 270.adaptSize,
                                              width: 270.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v)),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 66.v),
                                                  child: SizedBox(
                                                      width: 271.h,
                                                      child: Divider(
                                                          endIndent: 1.h)))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: SizedBox(
                                                  width: 271.h,
                                                  child:
                                                      Divider(endIndent: 1.h))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: SizedBox(
                                                  width: 67.h,
                                                  child: Divider())),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                  height: 67.v,
                                                  child: VerticalDivider(
                                                      width: 1.h,
                                                      thickness: 1.v))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: SizedBox(
                                                  height: 270.v,
                                                  child: VerticalDivider(
                                                      width: 1.h,
                                                      thickness: 1.v))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 67.h),
                                                  child: SizedBox(
                                                      height: 270.v,
                                                      child: VerticalDivider(
                                                          width: 1.h,
                                                          thickness: 1.v)))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 89.h),
                                                  child: SizedBox(
                                                      height: 67.v,
                                                      child: VerticalDivider(
                                                          width: 1.h,
                                                          thickness: 1.v)))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 157.h),
                                                  child: SizedBox(
                                                      height: 66.v,
                                                      child: VerticalDivider(
                                                          width: 1.h,
                                                          thickness: 1.v)))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 67.h),
                                                  child: SizedBox(
                                                      height: 66.v,
                                                      child: VerticalDivider(
                                                          width: 1.h,
                                                          thickness: 1.v)))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 1.h),
                                                  child: SizedBox(
                                                      height: 67.v,
                                                      child: VerticalDivider(
                                                          width: 1.h,
                                                          thickness: 1.v)))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 68.h),
                                                  child: SizedBox(
                                                      height: 67.v,
                                                      child: VerticalDivider(
                                                          width: 1.h,
                                                          thickness: 1.v)))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 1.h),
                                                  child: SizedBox(
                                                      height: 68.v,
                                                      child: VerticalDivider(
                                                          width: 1.h,
                                                          thickness: 1.v,
                                                          indent: 1.h)))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 271.h),
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
                                                        SizedBox(height: 11.v),
                                                        Divider()
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 70.h,
                                                      top: 1.v,
                                                      right: 182.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                            "msg_investment_portfolio"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .poppinsOnPrimaryContainer),
                                                        SizedBox(height: 4.v),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgUser,
                                                            height:
                                                                28.adaptSize,
                                                            width: 28.adaptSize)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 183.h,
                                                      top: 2.v,
                                                      right: 112.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_insurance".tr,
                                                            style: CustomTextStyles
                                                                .poppinsOnPrimaryContainer),
                                                        SizedBox(height: 3.v),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMapInsuranceAgency,
                                                            height:
                                                                28.adaptSize,
                                                            width: 28.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 3.h))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 255.h,
                                                      top: 2.v,
                                                      right: 11.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                            "lbl_emergency_fund"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .poppinsOnPrimaryContainer),
                                                        SizedBox(height: 3.v),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMedicalIconIEmergency,
                                                            height:
                                                                28.adaptSize,
                                                            width: 28.adaptSize)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h, bottom: 2.v),
                                                  child: Row(
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
                                                            height:
                                                                28.adaptSize,
                                                            width: 28.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 6.h,
                                                                    top: 25.v,
                                                                    bottom:
                                                                        29.v))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h, bottom: 106.v),
                                                  child: Row(children: [
                                                    Text("lbl_credit_score".tr,
                                                        style: theme.textTheme
                                                            .labelSmall),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMaterialSymbol,
                                                        height: 28.adaptSize,
                                                        width: 28.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 5.h,
                                                            top: 16.v,
                                                            bottom: 14.v))
                                                  ]))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 68.v),
                                              child: Selector<GameProvider,
                                                      TextEditingController?>(
                                                  selector: (context,
                                                          provider) =>
                                                      provider
                                                          .financialPlanningController,
                                                  builder: (context,
                                                      financialPlanningController,
                                                      child) {
                                                    return CustomTextFormField(
                                                        width: 67.h,
                                                        controller:
                                                            financialPlanningController,
                                                        hintText:
                                                            "msg_financial_planning"
                                                                .tr,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        alignment:
                                                            Alignment.topLeft,
                                                        suffix: Container(
                                                            margin:
                                                                EdgeInsets.fromLTRB(
                                                                    6.h,
                                                                    28.v,
                                                                    19.h,
                                                                    30.v),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMaskGroup,
                                                                height: 28
                                                                    .adaptSize,
                                                                width: 28
                                                                    .adaptSize)),
                                                        suffixConstraints:
                                                            BoxConstraints(
                                                                maxHeight:
                                                                    89.v),
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 2.h));
                                                  })),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              height: 49.v,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 18.h, top: 20.v)),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 47.v, right: 73.h),
                                                  child: Text(
                                                      "lbl_long_term_goals".tr,
                                                      style: theme.textTheme
                                                          .labelLarge))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 51.h, bottom: 53.v),
                                                  child: Text(
                                                      "msg_financial_foundation"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .labelLargeGray200)))
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, top: 131.v, bottom: 78.v),
                                    child: Text("lbl_securing_future".tr,
                                        style: theme.textTheme.labelLarge))
                              ]),
                          SizedBox(height: 1.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 92.h),
                                  child: Text("lbl_new_beginnings".tr,
                                      style: theme.textTheme.labelLarge)))
                        ])))
              ])),
          SizedBox(
              height: 404.v,
              child: VerticalDivider(width: 1.h, thickness: 1.v)),
          SizedBox(
              height: 404.v,
              child:
                  VerticalDivider(width: 1.h, thickness: 1.v, endIndent: 337.h))
        ]));
  }

  /// Section Widget
  Widget _buildSeventyEight(BuildContext context) {
    return SizedBox(
        height: 189.v,
        width: 429.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle40,
              width: 178.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 79.v,
                  width: 429.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 14.h),
                            decoration: AppDecoration.gradientTealToBlueGray
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder36),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Spacer(flex: 52),
                                  Padding(
                                      padding: EdgeInsets.only(top: 14.v),
                                      child: _buildEightyOne(context,
                                          lock: ImageConstant.imgTicket,
                                          friends: "lbl_wins".tr)),
                                  Spacer(flex: 47),
                                  Padding(
                                      padding: EdgeInsets.only(top: 14.v),
                                      child: _buildEightyOne(context,
                                          lock: ImageConstant.imgLock,
                                          friends: "lbl_friends".tr,
                                          onTapLock: () {
                                        onTapLock(context);
                                      })),
                                  Container(
                                      height: 63.v,
                                      width: 86.h,
                                      margin:
                                          EdgeInsets.only(left: 4.h, top: 14.v),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                    "lbl_leaderboard".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeSemiBold12)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserOnprimarycontainer,
                                                height: 46.v,
                                                alignment: Alignment.topRight,
                                                margin: EdgeInsets.only(
                                                    right: 12.h),
                                                onTap: () {
                                                  onTapImgUser(context);
                                                })
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 26.h, right: 321.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSearch,
                                      height: 46.v),
                                  Text("lbl_characters".tr,
                                      style:
                                          CustomTextStyles.labelLargeSemiBold)
                                ])))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle42,
              height: 128.adaptSize,
              width: 128.adaptSize,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 18.v)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 157.h, right: 143.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 36.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup20),
                          fit: BoxFit.cover)),
                  child:
                      Text("lbl_roll".tr, style: theme.textTheme.displaySmall)))
        ]));
  }

  /// Common widget
  Widget _buildTwentySeven(BuildContext context) {
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

  /// Common widget
  Widget _buildEightyOne(
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
