import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/constants/images.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import '../../../core/model/user_profile/user_profile_model.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key, required this.userProfile});
final UserProfile userProfile ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(200.r),
              child: Image.asset(
                userProfile.image,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Personal information",
              style: GoogleFonts.inriaSerif(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
            Text(
              "Email: ${userProfile.email}",
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
            Text(
              "Phone Number: ${userProfile.phoneNumber}",
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
