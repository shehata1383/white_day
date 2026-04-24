import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key, required this.review});
  final Map review;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: AppColors.colorButton.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(50.w),
            child: Image.asset(
              review["image"],
              width: 55.w,
              height: 55.h,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellowAccent, size: 25),
                        Icon(Icons.star, color: Colors.yellowAccent, size: 25),
                        Icon(Icons.star, color: Colors.yellowAccent, size: 25),
                        Icon(Icons.star, color: Colors.yellowAccent, size: 25),
                        Icon(Icons.star, color: Colors.yellowAccent, size: 25),
                      ],
                    ),                Text(review["review"], style: TextStyle(fontSize: 14.sp)),

                  ],
                ),
                Text(review["text"], style: TextStyle(fontSize: 14.sp)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
