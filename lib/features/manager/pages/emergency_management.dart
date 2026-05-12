import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';

import '../../../core/model/manager/emergency_management.dart';

class EmergencyManagement extends StatelessWidget {
  const EmergencyManagement({super.key, required this.listSections});
  final List<EmergencyManagementModel> listSections;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Emergency management",
            style: GoogleFonts.inriaSerif(
              fontSize: 18.sp, // تم تكبير الخط قليلاً للوضوح
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Divider(color: AppColors.colorButton2, thickness: 1),
          SizedBox(height: 15.h),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85, // زيادة العرض ليناسب المحتوى
            height: MediaQuery.of(context).size.height * 0.65,
            child: GridView.builder(
              // تم حذف Expanded فوراً لأنه يسبب الخطأ البرمجي
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              itemCount: listSections.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 25.h,
                mainAxisExtent: 130.h, // زيادة الارتفاع ليتسع للعنصرين (البيانات والحالة)
              ),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // الحاوية العلوية (بيانات الطوارئ)
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          stops: const [0.4, 0.95],
                          colors: [
                            AppColors.colorMyReservation1,
                            AppColors.colorMyReservation2,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (listSections[index].clientName != null &&
                              listSections[index].clientName!.isNotEmpty)
                            Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Text(
                                  "Client: ${listSections[index].clientName}",
                                  style: GoogleFonts.inriaSerif(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(height: 5.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Text(
                              listSections[index].data,
                              style: GoogleFonts.inriaSerif(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // الحاوية السفلية (الحالة)
                    Container(
                      width: 140.w,
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      decoration: BoxDecoration(
                        color: AppColors.colorButton,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: AppColors.colorButton2.withOpacity(0.3)),
                      ),
                      child: Center(
                        child: Text(
                          listSections[index].status,
                          style: GoogleFonts.inriaSerif(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}