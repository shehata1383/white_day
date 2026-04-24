import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/controller/auth/login.controller.dart';
import 'package:white_day/core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/images.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginControllerImp>(
      builder: (loginControllerImp) {
        return Scaffold(
          backgroundColor: AppColors.backGround,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeLarge,
            ),
            child: Form(
              key: loginControllerImp.formstate,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(width: double.infinity, height: 10),
                      Image.asset(Images.logo, width: 352, height: 169),
                      SizedBox(height: 115),
                      SizedBox(height: Dimensions.paddingSizeLarge),
                      CustomTextField(
                        colorFill: AppColors.colorInput,
                        height: 60.h,
                        borderRadius: Dimensions.radiusLarge,
                        hintText: "Email",
                        iconSize: 30.w,
                        controller: loginControllerImp.email,
                        suffixIcon: Icons.email_outlined,
                        suffixIconColor: Colors.black,
                      ),
                      SizedBox(height: Dimensions.paddingSizeDefault),
                      CustomTextField(
                        colorFill: AppColors.colorInput,
                        height: 60.h,
                        borderRadius: Dimensions.radiusLarge,
                        hintText: "Password",
                        controller: loginControllerImp.password,
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
                              style: GoogleFonts.inriaSerif(
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
                          loginControllerImp.login();
                        },
                        buttonText: "Login",
                        color: AppColors.colorButton,
                        fontSize: 30.sp,
                        textColor: Colors.black,
                        isBold: true,
                        radius: Dimensions.radiusLarge,
                      ),

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
                            child: Image.asset(
                              Images.google,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              Images.facebook,
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
