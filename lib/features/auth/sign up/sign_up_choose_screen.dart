import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/helper/route_helper.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/widget/custom_button.dart';
import '../../widget/appbar_logo_screen.dart';

class SignUpChooseScreen extends StatelessWidget {
  const SignUpChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                appBarLogoScreen(),

                Text(
                  "Choose Your Role",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),SizedBox(height: 30.h,),

                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: [
                            CustomButton(
                              width: 250.w,
                              height: 76,
                              onPressed: () {
                                Get.toNamed(RouteHelper.signUpClientScreen);
                              },
                              buttonText: "Client".tr,
                              color: AppColors.colorButton,
                              fontSize: 38.sp,

                              textColor: Colors.black,
                              isBold: true,
                              radius: 100,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(200),
                              child: Image.asset(
                                Images.dart5,
                                height: 90.h,
                                width: 100.w,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Book your hall and service easily",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                   SizedBox(height: 70.h,), Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: [
                            CustomButton(
                              width: 250.w,
                              height: 76,
                              onPressed: () {Get.toNamed(RouteHelper.signUpVendorScreen);},
                              buttonText: "Vendor".tr,
                              color: AppColors.colorButton,
                              fontSize: 38.sp,

                              textColor: Colors.black,
                              isBold: true,
                              radius: 100,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(200),
                              child: Image.asset(
                                Images.vendor,
                                height: 90.h,
                                width: 100.w,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Showcase your services and reach more customers",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
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
