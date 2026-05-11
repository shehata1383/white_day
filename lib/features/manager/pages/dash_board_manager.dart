import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';

import 'widget/build_dount_chart_dashboard_manager.dart';
import 'widget/chart_dash_board_manager.dart';

class DashBoardManager extends StatelessWidget {
  const DashBoardManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 20.h),
              alignment: AlignmentDirectional.centerStart,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 15.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.colorButton2,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total bookings",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        NumberFormat("#,###").format(7265).toString(),
                        style: GoogleFonts.inriaSerif(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon( Icons.add, size: 12.sp, color: Colors.green ,),
                          Text(
                            "11.01%",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.green,
                            ),
                          ),
                          Icon(
                            Icons.trending_up_outlined,
                            size: 12.sp,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 20.h),
              alignment: AlignmentDirectional.centerStart,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 15.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.colorButton2,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Confirm",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        NumberFormat("#,###").format(3671).toString(),
                        style: GoogleFonts.inriaSerif(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon( Icons.remove, size: 12.sp, color: Colors.blueAccent ,),
                          Text(
                            "0.03%",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Icon(
                            Icons.trending_down_outlined,
                            size: 12.sp,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),Container(
              margin: EdgeInsetsDirectional.only(bottom: 20.h),
              alignment: AlignmentDirectional.centerStart,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 15.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.colorButton2,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "On hold",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        NumberFormat("#,###").format(256).toString(),
                        style: GoogleFonts.inriaSerif(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon( Icons.add, size: 12.sp, color: Color(0xffB4B4B4),),
                          Text(
                            "15.03%",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900,
                              color: Color(0xffB4B4B4),
                            ),
                          ),
                          Icon(
                            Icons.trending_up_outlined,
                            size: 12.sp,
                            color: Color(0xffB4B4B4),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),Container(
              margin: EdgeInsetsDirectional.only(bottom: 20.h),
              alignment: AlignmentDirectional.centerStart,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 15.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.colorButton2,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Active Users",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        NumberFormat("#,###").format(2318).toString(),
                        style: GoogleFonts.inriaSerif(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon( Icons.add, size: 12.sp, color: Colors.redAccent ,),
                          Text(
                            "6.08%",
                            style: GoogleFonts.inriaSerif(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.redAccent,
                            ),
                          ),
                          Icon(
                            Icons.trending_up_outlined,
                            size: 12.sp,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),  SizedBox(height: 30.h),
            buildAdvancedLineChart(),SizedBox(height: 10.h),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
              alignment: AlignmentDirectional.center,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reservations",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: buildDonutChart(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
