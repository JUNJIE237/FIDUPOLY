import 'package:fidupoly2/widgets/custom_elevated_button.dart';
import 'models/first_page_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:fidupoly2/core/app_export.dart';
import 'provider/first_page_provider.dart';

class FirstPageScreen extends StatefulWidget {
  const FirstPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FirstPageScreenState createState() => FirstPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FirstPageProvider(),
      child: FirstPageScreen(),
    );
  }
}

class FirstPageScreenState extends State<FirstPageScreen> {
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
              CustomImageView(
                imagePath: ImageConstant.imgShape,
                height: 134.v,
              ),
              Spacer(
                flex: 31,
              ),
              _buildSix(context),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_gets_things_done".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              Spacer(
                flex: 68,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStarted(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 350.h,
        margin: EdgeInsets.only(
          left: 52.h,
          right: 28.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 17.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup6,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.v),
            CustomImageView(
              imagePath: ImageConstant.imgApp1,
              height: 168.v,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_get_started".tr,
      margin: EdgeInsets.only(
        left: 53.h,
        right: 52.h,
        bottom: 89.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientTealToBlueGrayDecoration,
    );
  }
}
