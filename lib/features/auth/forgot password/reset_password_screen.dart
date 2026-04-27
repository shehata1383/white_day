import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';
import '../../widget/appbar_logo_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Text(
              "Reset Password",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          
            SizedBox(height: 35.h),
            CustomTextField(
              colorFill: Colors.transparent,
              height: 60.h,
              width: MediaQuery.of(context).size.width*0.98,
              borderRadius: 20,
              hintText: "New Password",              isPassword: true,

              iconSize: 30.w,
              suffixIconColor: Colors.black,
            ),
            SizedBox(height: 20.h),
            CustomTextField(
              colorFill: Colors.transparent,
              height: 60.h,
              width: MediaQuery.of(context).size.width*0.98,
              borderRadius: 20,
              isPassword: true,
              hintText: "Confirm Password",
              iconSize: 30.w,
              suffixIconColor: Colors.black,
            ),
            SizedBox(height: 40.h),
            CustomButton(
              width: MediaQuery.of(context).size.width*0.85,
              height: 68,
              onPressed: () {
                Get.toNamed(RouteHelper.passwordResetSuccessfillyScreen);
              },
              buttonText: "Reset Password",
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