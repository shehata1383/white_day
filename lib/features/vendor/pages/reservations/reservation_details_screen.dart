import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import '../../../../core/model/vendor/reservation_model.dart';

class ReservationDetailsScreen extends StatelessWidget {
  const ReservationDetailsScreen({super.key, required this.model});
  final ReservationModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Text(
              "${model.requestType} - ${model.vendorName}",
              style: GoogleFonts.inriaSerif(
                // خط كلاسيكي يشبه التصميم
                fontSize: 22.sp,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 5.w,
                vertical: 10.h,
              ),
              margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    "Client: ${model.clientName}",
                    style: GoogleFonts.inriaSerif(
                      // خط كلاسيكي يشبه التصميم
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    model.resevationType,
                    style: GoogleFonts.inriaSerif(
                      // خط كلاسيكي يشبه التصميم
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    model.requestDate,
                    style: GoogleFonts.inriaSerif(
                      // خط كلاسيكي يشبه التصميم
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    "Time: ${model.time}",
                    style: GoogleFonts.inriaSerif(
                      // خط كلاسيكي يشبه التصميم
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    "Place: ${model.place}",
                    style: GoogleFonts.inriaSerif(
                      // خط كلاسيكي يشبه التصميم
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    "Total: ${NumberFormat("#,###").format(model.price)} L.E",
                    style: GoogleFonts.inriaSerif(
                      // خط كلاسيكي يشبه التصميم
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
