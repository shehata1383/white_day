import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildDonutChart() {
  return Row(
    children: [
      // الجزء الأيسر: الأساطير (Legend)
      Expanded( // استخدم Expanded بدلاً من SizedBox بعرض ثابت
        flex: 3, // أعطِ النصوص مساحة أكبر قليلاً
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLegendItem(const Color(0xFF4DBA8C), "Total bookings"),
            _buildLegendItem(const Color(0xFF1D71F2), "Confirm"),
            _buildLegendItem(const Color(0xFFFF2D46), "Active Users"),
            _buildLegendItem(const Color(0xFF53575E), "On hold"),
          ],
        ),
      ),
      
      // الجزء الأيمن: الرسم البياني
      Expanded(
        flex: 3, // مساحة الرسم البياني
        child: SizedBox(
          height: 100.h, // ارفع الارتفاع قليلاً ليتناسب مع نصف قطر الدائرة 50
          child: PieChart(
            PieChartData(
              startDegreeOffset: 270,
              sectionsSpace: 4,
              centerSpaceRadius: 20.r, // تقليل القطر قليلاً لتفادي الـ Overflow الرأسي
              sections: [
                PieChartSectionData(value: 55, color: const Color(0xFF4DBA8C), radius: 20.r, cornerRadius: 8.r, showTitle: false),
                PieChartSectionData(value: 22, color: const Color(0xFF1D71F2), radius: 20.r, cornerRadius: 8.r, showTitle: false),
                PieChartSectionData(value: 13, color: const Color(0xFFFF2D46), radius: 20.r, cornerRadius: 8.r, showTitle: false),
                PieChartSectionData(value: 10, color: const Color(0xFF53575E), radius: 20.r, cornerRadius: 8.r, showTitle: false),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

// دالة مساعدة لبناء عناصر الأسطورة لمنع تكرار الكود وحل مشكلة الـ Overflow
Widget _buildLegendItem(Color color, String label) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.h),
    child: Row(
      children: [
        Container(
          width: 10.w,
          height: 10.w,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: 8.w),
        Expanded( // يضمن أن النص لن يتجاوز عرض العمود
          child: Text(
            label,
            style: TextStyle(fontSize: 11.sp),
            maxLines: 1,
            overflow: TextOverflow.ellipsis, // يضع نقاط إذا كان النص طويلاً جداً
          ),
        ),
      ],
    ),
  );
}