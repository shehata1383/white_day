import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/widget/custom_button.dart';
import '../../widget/appbar_logo_screen.dart';

class PasswordResetSuccessfillyScreen extends StatelessWidget {
  const PasswordResetSuccessfillyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
           
          
            SizedBox(height: 35.h),

            CircleAvatar(
              radius: 100.r,
              backgroundColor: Color(0xff882748),
              child:Icon(Icons.done,color: AppColors.colorDetails,
              size: 100.w,) ,
            ),            SizedBox(height: 35.h),

           Text(
              "Password reset Successfilly",
              style: GoogleFonts.inriaSerif(
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ), SizedBox(height: 20.h),
            CustomButton(
              width: MediaQuery.of(context).size.width*0.85,
              height: 68,
              onPressed: () {
                Get.offAllNamed(RouteHelper.signIn);
              },
              buttonText: "Back to login",
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