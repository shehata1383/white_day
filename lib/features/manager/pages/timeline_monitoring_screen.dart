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
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(color: AppColors.colorButton2),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: listSections.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 15.h,
                  mainAxisExtent: 40.h,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.colorButton,
                      gradient: LinearGradient(
                        stops: [0.4, 0.95],
                        colors: [
                          AppColors.colorMyReservation1,
                          AppColors.colorMyReservation2,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10.w,
                            ),
                            child: Text(
                              "(${listSections[index].time})",
                              style: GoogleFonts.inriaSerif(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10.w,
                            ),
                            child: Text(
                              listSections[index].data,
                              style: GoogleFonts.inriaSerif(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
