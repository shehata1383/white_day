import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(width: double.infinity, height: 10),
                Image.asset(Images.logo, width: 352, height: 169),
                SizedBox(height: 115),
            
                // Text(
                //   "Sign In",
                //   style: robotoBold.copyWith(
                //     fontSize: Dimensions.fontSizeOverLarge,
                //   ),
                // ),
                SizedBox(height: Dimensions.paddingSizeLarge),
                CustomTextField(
                  colorFill: AppColors.colorInput,
                  height: 60.h,
                  borderRadius: Dimensions.radiusLarge,
                  hintText: "Email",
                  iconSize: 30.w,
                  suffixIcon: Icons.email_outlined,
                  suffixIconColor: Colors.black,
                ),
                SizedBox(height: Dimensions.paddingSizeDefault),
                CustomTextField(
                  colorFill: AppColors.colorInput,
                  height: 60.h,
                  borderRadius: Dimensions.radiusLarge,
                  hintText: "Password",
                  suffixIcon: Icons.lock_outlined,
                  iconSize: 30.w,
                  suffixIconColor: Colors.black,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
            
                      onTap: () {},
                      child: Text(
            
                        'Forgot password?',
                        style: GoogleFonts.inriaSerif
            
                        (
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomButton(
                  width: double.infinity,
                  height: 68,
                  onPressed: () {
                    Get.toNamed(RouteHelper.homeScreen);
                  },
                  buttonText: "Login",
                  color: AppColors.colorButton,
                  fontSize: 30.sp,
                  textColor: Colors.black,
                  isBold: true,
                  radius: Dimensions.radiusLarge,
                ),
                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Don't have an account ?".tr,
                //       style: robotoBold.copyWith(
                //         fontSize: Dimensions.fontSizeSmall,
                //       ),
                //     ),
                //     CustomButton(
                //       onPressed: () {
                //         Get.toNamed(RouteHelper.signUp);
                //       },
                //       buttonText: 'Signup'.tr,
                //       width: 55.w,
                //       height: 30,
                //       color: Colors.transparent,
                //       textColor: Colors.black,
                //     ),
                //   ],
                // ),
                SizedBox(height: 40.h),
                Text(
                  'Or',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'login with',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(Images.google, width: 50, height: 50),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(Images.facebook, width: 50, height: 50),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
