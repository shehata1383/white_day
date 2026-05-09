import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import '../../../../core/helper/route_helper.dart';

class BookingConfirmedScreen extends StatefulWidget {
  const BookingConfirmedScreen({super.key});

  @override
  State<BookingConfirmedScreen> createState() => _BookingConfirmedScreenState();
}

class _BookingConfirmedScreenState extends State<BookingConfirmedScreen> {
  @override
  void initState() 
   {
    super.initState();
     Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(RouteHelper.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              appBarLogoScreen(),
              SizedBox(height: 30.h),
              Container(
                padding: EdgeInsetsDirectional.all(30.w),
                decoration: BoxDecoration(
                  color: AppColors.colorDetails.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Container(
                  padding: EdgeInsetsDirectional.all(30.w),
                  decoration: BoxDecoration(
                    color: AppColors.colorButton2,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Icon(Icons.done, color: Colors.white, size: 70.h),
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Booking Confirmed!",
                style: GoogleFonts.inriaSerif(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              Text(
                "You’re all set. A confirmation email has been sent to you.",
                style: GoogleFonts.inriaSerif(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
