
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CalendarHeader extends StatelessWidget {
  final DateTime focusedDay;
  final VoidCallback onLeftArrowTap;
  final VoidCallback onRightArrowTap;
  final VoidCallback onTodayButtonTap;
  final VoidCallback onClearButtonTap;
  final bool clearButtonVisible;

  const CalendarHeader({super.key, 
    required this.focusedDay,
    required this.onLeftArrowTap,
    required this.onRightArrowTap,
    required this.onTodayButtonTap,
    required this.onClearButtonTap,
    required this.clearButtonVisible,
  });

  @override
  Widget build(BuildContext context) {
    final headerText = DateFormat.yMMM().format(focusedDay);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          SizedBox(
            width: 120.0,
            child: Text(headerText, style: const TextStyle(fontSize: 26.0)),
          ),

          if (clearButtonVisible)
            IconButton(
              icon: const Icon(Icons.clear, size: 20.0),
              visualDensity: VisualDensity.compact,
              onPressed: onClearButtonTap,
            ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: IconButton(
              icon: Icon(Icons.chevron_left, size: 30.w),
              onPressed: onLeftArrowTap,
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: IconButton(
              icon: Icon(Icons.chevron_right, size: 30.w),
              onPressed: onRightArrowTap,
            ),
          ),
        ],
      ),
    );
  }
}// احذف هذا الكود لأنه يسبب تعارض
bool isSameDay(DateTime? a, DateTime? b) {
  if (a == null || b == null) {
    return false; // هنا سيعطيك خطأ لأن النوع المرتجع هو قائمة وليس bool
  }
  return a.year == b.year && a.month == b.month && a.day == b.day;
}