import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';

import '../../../core/model/manager/timeline_section.dart';

class TimelineMonitoringScreen extends StatelessWidget {
  const TimelineMonitoringScreen({super.key, required this.listSections});
  final List<TimelineSection> listSections;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Timeline monitoring",
            style: GoogleFonts.inriaSerif(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "15-6-2026",
            style: GoogleFonts.inriaSerif(
              fontSize: 18.sp, // تقليل الخط قليلاً لتمييز التاريخ عن العنوان
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
          Divider(color: AppColors.colorButton2, thickness: 1),
          SizedBox(height: 15.h),
          
          // تحديد مساحة العرض والارتفاع للجدول
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8, // زيادة العرض لراحة النص
            height: MediaQuery.of(context).size.height * 0.6, // زيادة الارتفاع ليعرض عناصر أكثر
            child: GridView.builder(
              // تم حذف Expanded من هنا لأنه يسبب خطأ برمجي داخل SizedBox
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              itemCount: listSections.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12.h,
                mainAxisExtent: 60.h, // زيادة الارتفاع ليتسع للوقت والبيانات معاً
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: const [0.3, 0.9],
                      colors: [
                        AppColors.colorMyReservation1,
                        AppColors.colorMyReservation2,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // توسيط المحتوى عمودياً
                    children: [
                      Text(
                        "(${listSections[index].time})",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        listSections[index].data,
                        style: GoogleFonts.inriaSerif(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}