import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:white_day/controller/auth/signupClientController.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';

class SignUpClientScreen extends StatelessWidget {
  const SignUpClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupclientcontrollerImp>(
      init: SignupclientcontrollerImp(),
      builder: (signupclientcontrollerImp) {
        return Form(
          key: signupclientcontrollerImp.formstate,
          child: Scaffold(
            backgroundColor: AppColors.backGround,
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(width: double.infinity, height: 10),
                      Image.asset(Images.logo, width: 352, height: 150),
                       SizedBox(height: 35.h),
                      CustomTextField(
                        colorFill: AppColors.colorInput,
                        height: 60.h,
                        borderRadius: 20,
                        hintText: "Full Name".tr,
                        iconSize: 30.w,
                        controller: signupclientcontrollerImp.NameController,
                        suffixIcon: Icons.person_outline,
                        suffixIconColor: Colors.black,
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        colorFill: AppColors.colorInput,
                        height: 60.h,
                        borderRadius: 20,
                        hintText: "Email".tr,
                        controller: signupclientcontrollerImp.EmailController,
                        iconSize: 30.w,
                        suffixIcon: Icons.email_outlined,
                        suffixIconColor: Colors.black,
                      ),
                      SizedBox(height: 12),
                      CustomTextField(
                        colorFill: AppColors.colorInput,
                        height: 60.h,
                        borderRadius: 20,
                        hintText: "Phone number".tr,
                        controller: signupclientcontrollerImp.MobileNumberController,
                        suffixIcon: Icons.phone,
                        iconSize: 30.w,
                        suffixIconColor: Colors.black,
                      ),
                      SizedBox(height: 12),
                      CustomTextField(
                        colorFill: AppColors.colorInput,
                        height: 60.h,
                        borderRadius: 20,
                        hintText: "Password".tr,
                        controller: signupclientcontrollerImp.PasswordController,
                        suffixIcon: Icons.lock_outlined,
                        iconSize: 30.w,
                        suffixIconColor: Colors.black,
                      ),

                      const SizedBox(height: 63),
                      CustomButton(
                        width: double.infinity,
                        height: 68,
                        onPressed: () {
                          signupclientcontrollerImp.signUp();
                        },
                        buttonText: "Create account".tr,
                        color: AppColors.colorButton,
                        fontSize: 38.sp,
                        textColor: Colors.black,
                        isBold: true,
                        radius: 20,
                      ), SizedBox(height: 20.h),
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
