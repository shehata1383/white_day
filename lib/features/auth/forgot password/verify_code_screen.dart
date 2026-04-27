import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';
import '../../widget/appbar_logo_screen.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Text(
              "Verify Code",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.h),

            Text(
              "Enter the code sent to your email.",
              style: GoogleFonts.inriaSerif(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                  colorFill: Colors.transparent,
                  height: 60.h,
                  width: MediaQuery.of(context).size.width * 0.22,
                  borderRadius: 20,
                  hintText: "--",
                  textAlign: TextAlign.center,

                  iconSize: 30.w,
                  suffixIconColor: Colors.black,
                ),
                CustomTextField(
                  colorFill: Colors.transparent,
                  height: 60.h,
                  width: MediaQuery.of(context).size.width * 0.22,
                  borderRadius: 20,
                  hintText: "--",
                  textAlign: TextAlign.center,

                  iconSize: 30.w,
                  suffixIconColor: Colors.black,
                ),
                CustomTextField(
                  colorFill: Colors.transparent,
                  height: 60.h,
                  width: MediaQuery.of(context).size.width * 0.22,
                  borderRadius: 20,
                  hintText: "--",
                  textAlign: TextAlign.center,

                  iconSize: 30.w,
                  suffixIconColor: Colors.black,
                ),
                CustomTextField(
                  colorFill: Colors.transparent,
                  height: 60.h,
                  width: MediaQuery.of(context).size.width * 0.22,
                  borderRadius: 20,
                  hintText: "--",
                  textAlign: TextAlign.center,
                  iconSize: 30.w,
                  suffixIconColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomButton(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 68,
              onPressed: () {
                Get.toNamed(RouteHelper.resetPasswordScreen);
              },
              buttonText: "Verify",
              color: AppColors.colorButton,
              fontSize: 30.sp,
              textColor: Colors.black,
              isBold: true,
              radius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
