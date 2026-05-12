import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Wallet",
          style: GoogleFonts.inriaSerif(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Divider(color: AppColors.colorButton2),
        SizedBox(height: 50),

        Container(
          margin: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
          padding: EdgeInsetsDirectional.symmetric(
            vertical: 10.h,
            horizontal: 10.w,
          ),
          decoration: BoxDecoration(
            color: AppColors.colorButton,
            borderRadius: BorderRadiusDirectional.circular(15.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This month:",
                style: GoogleFonts.inriaSerif(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  "${NumberFormat("#,###").format(500000)} L.E",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(color: AppColors.colorButton2,)
           ,  Text(
                "Total profits:",
                style: GoogleFonts.inriaSerif(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  "${NumberFormat("#,###").format(1000000)} L.E",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ), ],
          ),
        ),
      ],
    );
  }
}
