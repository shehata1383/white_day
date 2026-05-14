import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/constants/images.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import '../../../core/model/user_profile/user_profile_model.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key, required this.userProfile});
  final UserProfile userProfile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBarLogoScreen(),
              SizedBox(height: 20),
              Align(
                alignment: AlignmentDirectional.center,
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(300.r),
                  child: Image.asset(
                    userProfile.image,
                    height: 180.h,
                    width: 200.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  "Personal information",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: AppColors.colorButton2,
                thickness: 1,
                indent: 50.w,
                endIndent: 50.w,
              ),
              SizedBox(height: 5),
              Text(
                "Name: ${userProfile.name}",
                style: GoogleFonts.inriaSerif(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Email: ${userProfile.email}",
                style: GoogleFonts.inriaSerif(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Phone Number: ${userProfile.phoneNumber}",
                style: GoogleFonts.inriaSerif(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.h,),
              Divider(color: AppColors.colorButton2,)
            ],
          ),
        ),
      ),
    );
  }
}
