import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';

import '../../../core/widget/custom_button.dart';

class AvailabilityUpdateScreen extends StatelessWidget {
  const AvailabilityUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Availability Update",
              style: GoogleFonts.inriaSerif(
                // خط كلاسيكي يشبه التصميم
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Divider(
              color: AppColors.colorButton2,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.w),
                children: [
                  _buildMonthCalendar("March 2026", reservedDay: 13),
                  _buildMonthCalendar("April 2026", reservedDay: 30),
                  _buildMonthCalendar("May 2026", pendingDay: 13),
                  _buildMonthCalendar("June 2026"),
                ],
              ),
            ),
            _buildLegend(), // مفتاح الألوان
            CustomButton(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              onPressed: () {},
              buttonText: "Save Availability",
              color: AppColors.colorButton,
              fontSize: 20.sp,
              textColor: Colors.black,
              isBold: true,
              radius: 30.r,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  // وحدة بناء الشهر
  Widget _buildMonthCalendar(
    String monthName, {
    int? reservedDay,
    int? pendingDay,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            monthName,
            style: GoogleFonts.inriaSerif(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7, // 7 أيام في الأسبوع
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: 35, // مثال لعدد الأيام
            itemBuilder: (context, index) {
              int day = index + 1;
              Color bgColor = const Color(
                0xFFF7D99E,
              ); // اللون الافتراضي (Available)
              Color textColor = Colors.black;

              if (day == reservedDay) {
                bgColor = const Color(0xFF6B243C); // Reserved
              }
              if (day == pendingDay) {
                bgColor = const Color(0xFF1D4ED8); // Pending
              }
              if (day > 31) {
                // أيام الشهر التالي أو السابق (باهتة)
                bgColor = const Color(0xFFF2EBE1).withOpacity(0.5);
                textColor = Colors.grey;
              }

              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  "${day > 31 ? day - 31 : day}",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: (day == reservedDay || day == pendingDay)
                        ? Colors.white
                        : textColor,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // مفتاح الألوان في الأسفل
  Widget _buildLegend() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        verticalDirection: VerticalDirection.up,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 65.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(radius: 15.r, backgroundColor: Color(0xFF6B243C)),
                SizedBox(height: 5.h),
                Text(
                  "Reserved",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSerif(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 65.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(radius: 15.r, backgroundColor: Color(0xFF1D4ED8)),
                SizedBox(height: 5.h),
                Text(
                  "Request is\npending",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSerif(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 65.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(radius: 15.r, backgroundColor: Color(0xFFF7D99E)),
                SizedBox(height: 5.h),
                Text(
                  "Available",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSerif(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
