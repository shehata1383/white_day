import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

Widget buildFilterButton(
    String label,
    String? value,
    List<DropdownMenuItem<Object>>? items,
    Function(Object?) onChanged,
  ) {
    return Container(
      width: 125.w,
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.colorfilter,
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor:Colors.white,
          value: value,
          hint: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: GoogleFonts.inriaSerif(
                  fontSize: 22.sp,
                  color: Colors.black,
                ),
              ),
              const Icon(Icons.unfold_more, size: 18, color: Colors.black),
            ],
          ),
          isExpanded: true,
          icon: const SizedBox.shrink(),
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }