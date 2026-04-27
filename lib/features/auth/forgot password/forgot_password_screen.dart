import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/helper/route_helper.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';
import '../../widget/appbar_logo_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Text(
              "Forgot Password",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.h),

            Text(
              "Please enter email to reset your password.",
              style: GoogleFonts.inriaSerif(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              colorFill: Colors.transparent,
              height: 60.h,
              width: MediaQuery.of(context).size.width*0.98,
              borderRadius: 20,
              hintText: "Email",
              iconSize: 30.w,
              suffixIconColor: Colors.black,
            ),
            SizedBox(height: 10.h),
            CustomButton(
              width: MediaQuery.of(context).size.width*0.85,
              height: 68,
              onPressed: () {
                Get.toNamed(RouteHelper.verifyCodeScreen);
              },
              buttonText: "Send Code",
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
