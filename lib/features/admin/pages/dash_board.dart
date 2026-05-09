import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Dashboard",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Divider(color: AppColors.colorButton2),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(start: 5.w),
                              alignment: AlignmentDirectional.centerStart,
                              width: MediaQuery.of(context).size.width * 0.25,
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 15.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Users",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 7.h),
                                  Text(
                                    NumberFormat("#,###").format(1000).toString(),
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 10.w),
                              alignment: AlignmentDirectional.centerStart,
                              width: MediaQuery.of(context).size.width * 0.25,
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 15.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Vendor",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 7.h),
                                  Text(
                                    NumberFormat("#,###").format(500).toString(),
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(start: 5.w),
                              alignment: AlignmentDirectional.centerStart,
                              width: MediaQuery.of(context).size.width * 0.25,
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 15.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Clients",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 7.h),
                                  Text(
                                    NumberFormat("#,###").format(7000).toString(),
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 10.w),
                              alignment: AlignmentDirectional.centerStart,
                              width: MediaQuery.of(context).size.width * 0.25,
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 15.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Total Profits",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 7.h),
                                  Text(
                                    "${NumberFormat("#,###").format(50000)} L.E",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Container(width: MediaQuery.of(context).size.width*0.6,
                        padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
                        alignment: AlignmentDirectional.center,
                          color: AppColors.colorChart,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ Text(
                          "Reservations",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),SizedBox(height: 10.h,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.55,
                                height: 250.h, //
                                child: BarChart(
                                  BarChartData(
                                    // 1. إلغاء الخطوط المتقاطعة (Grid Lines) خلف الرسم
                                    gridData: const FlGridData(show: false),
                              
                                    // 2. التحكم في المحاور (العناوين)
                                    titlesData: FlTitlesData(
                                      show: true,
                                      // إخفاء المحور العلوي
                                      topTitles: const AxisTitles(
                                        drawBelowEverything: false,
                                        sideTitles: SideTitles(showTitles: false),
                                      ),
                                      // إخفاء المحور الأيمن فقط كما طلبت
                                      rightTitles: const AxisTitles( 
                                      ),
                              
                                      // إبقاء المحور الأيسر لإظهار عدد الحجوزات
                                      leftTitles: AxisTitles(
                                        drawBelowEverything: false,
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          reservedSize: 30,
                                          getTitlesWidget: (value, meta) =>
                                              Text(value.toInt().toString()),
                                        ),
                                      ),
                              
                                      // إبقاء المحور السفلي لإظهار أيام الشهر
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          getTitlesWidget: (value, meta) =>
                                              Text(value.toInt().toString()),
                                        ),
                                      ),
                                    ),
                              
                                    // باقي إعداداتك (مثل الأعمدة وخط التارجت 100) تبقى كما هي
                                    maxY: 100,
                                    barGroups: [
                                      // بيانات أيام الشهر
                                      BarChartGroupData(
                                        x: 1,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 85,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 2,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 100,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 1,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 85,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 2,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 100,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      // ... وهكذا لباقي الأيام
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Container(width: MediaQuery.of(context).size.width*0.6,
                        padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
                        alignment: AlignmentDirectional.center,
                          color: AppColors.colorChart,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ Text(
                          "Revenues",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),SizedBox(height: 10.h,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.55,
                                height: 250.h, //
                                child: BarChart(
                                  BarChartData(
                                    // 1. إلغاء الخطوط المتقاطعة (Grid Lines) خلف الرسم
                                    gridData: const FlGridData(show: false),
                              
                                    // 2. التحكم في المحاور (العناوين)
                                    titlesData: FlTitlesData(
                                      show: true,
                                      // إخفاء المحور العلوي
                                      topTitles: const AxisTitles(
                                        drawBelowEverything: false,
                                        sideTitles: SideTitles(showTitles: false),
                                      ),
                                      // إخفاء المحور الأيمن فقط كما طلبت
                                      rightTitles: const AxisTitles( 
                                      ),
                              
                                      // إبقاء المحور الأيسر لإظهار عدد الحجوزات
                                      leftTitles: AxisTitles(
                                        drawBelowEverything: false,
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          reservedSize: 30,
                                          getTitlesWidget: (value, meta) =>
                                              Text(value.toInt().toString()),
                                        ),
                                      ),
                              
                                      // إبقاء المحور السفلي لإظهار أيام الشهر
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          getTitlesWidget: (value, meta) =>
                                              Text(value.toInt().toString()),
                                        ),
                                      ),
                                    ),
                              
                                    // باقي إعداداتك (مثل الأعمدة وخط التارجت 100) تبقى كما هي
                                    maxY: 100,
                                    barGroups: [
                                      // بيانات أيام الشهر
                                      BarChartGroupData(
                                        x: 1,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 85,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 2,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 100,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 1,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 85,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 2,
                                        barRods: [
                                          BarChartRodData(
                                            toY: 100,
                                            color: Color(0xFF8B2C4F),
                                          ),
                                        ],
                                      ),
                                      // ... وهكذا لباقي الأيام
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h,),
                      ],
                    ),
                  );
  }
}