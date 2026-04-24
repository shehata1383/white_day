import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';

class SignOutScreen extends StatefulWidget {
  const SignOutScreen({super.key});

  @override
  State<SignOutScreen> createState() => _SignOutScreenState();
}

class _SignOutScreenState extends State<SignOutScreen> {
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
                Image.asset(Images.logo, width: 352, height: 150),
                SizedBox(height: 115),
                // Image.asset(
                //   Images.person,
                //   width: 80.w,
                //   height: 80.h,
                //   filterQuality: FilterQuality.high,
                // ),
                // Text(
                //   "createAccount".tr,
                //   style: robotoBold.copyWith(
                //     fontSize: Dimensions.fontSizeOverLarge,
                //   ),
                // ),
                SizedBox(height: Dimensions.paddingSizeLarge),
                CustomTextField(
                  colorFill: AppColors.colorInput,
                  height: 60.h,
                  borderRadius: Dimensions.radiusLarge,
                  hintText: "Full Name".tr,
                  iconSize: 30.w,
                  suffixIcon: Icons.person_outline,
                  suffixIconColor: Colors.black,
                ),
                SizedBox(height: Dimensions.paddingSizeLarge),
                CustomTextField(
                  colorFill: AppColors.colorInput,
                  height: 60.h,
                  borderRadius: Dimensions.radiusLarge,
                  hintText: "Email".tr,
                  iconSize: 30.w,
                  suffixIcon: Icons.email_outlined,
                  suffixIconColor: Colors.black,
                ),
                SizedBox(height: Dimensions.paddingSizeDefault),
                CustomTextField(
                  colorFill: AppColors.colorInput,
                  height: 60.h,
                  borderRadius: Dimensions.radiusLarge,
                  hintText: "Phone number".tr,
                  suffixIcon: Icons.phone,
                  iconSize: 30.w,
                  suffixIconColor: Colors.black,
                ),
                SizedBox(height: Dimensions.paddingSizeDefault),
                CustomTextField(
                  colorFill: AppColors.colorInput,
                  height: 60.h,
                  borderRadius: Dimensions.radiusLarge,
                  hintText: "Password".tr,
                  suffixIcon: Icons.lock_outlined,
                  iconSize: 30.w,
                  suffixIconColor: Colors.black,
                ),
            
                const SizedBox(height: 63),
                SafeArea(
                  child: CustomButton(
                    width: double.infinity,
                    height: 68,
                    onPressed: () {
                      Get.toNamed(RouteHelper.homeScreen);
                    },
                    buttonText: "Create account".tr,
                    color: AppColors.colorButton,
                    fontSize: 38.sp,
                    textColor: Colors.black,
                    isBold: true,
                    radius: Dimensions.radiusLarge,
                  
                  ),
                ),
                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Already have an account".tr,
                //       style: robotoBold.copyWith(
                //         fontSize: Dimensions.fontSizeSmall,
                //       ),
                //     ),
                //     CustomButton(
                //       onPressed: () {
                //         Get.back();
                //       },
                //       buttonText: 'logIn'.tr,
                //       width: 55.w,
                //       height: 30,
                //       color: Colors.transparent,
                //       textColor: Colors.black,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
