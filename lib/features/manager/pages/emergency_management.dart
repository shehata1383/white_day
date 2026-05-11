import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';

import '../../../core/model/manager/emergency_management.dart';

class EmergencyManagement extends StatelessWidget {
  const EmergencyManagement({super.key,required this.listSections});
  final List<EmergencyManagementModel> listSections;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Emergency management",
            style: GoogleFonts.inriaSerif(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
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
                  mainAxisSpacing: 30.h,
                  mainAxisExtent: 90.h,
                ),
                itemBuilder: (context, index) {
                  return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(alignment: Alignment.center,padding: EdgeInsetsDirectional.symmetric(vertical: 7.w),
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
                        child: Column(mainAxisSize: MainAxisSize.min,
                          children: [
                          listSections[index].clientName!=""?  Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 10.w,
                                ),
                                child: Text(
                                  "Client: ${listSections[index].clientName}",
                                  style: GoogleFonts.inriaSerif(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ) : SizedBox.shrink(),
                            Align(
                              alignment: AlignmentDirectional.center,
                              child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 10.w,
                                ),
                                child: Text(
                                  listSections[index].data,
                                  style: GoogleFonts.inriaSerif(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120.w,
                        padding: EdgeInsetsDirectional.symmetric(vertical: 7.w),
                    decoration: BoxDecoration(
                      color: AppColors.colorButton,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Padding(
                        padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 10.w,
                        ),
                        child: Text(
                          listSections[index].status,
                          style: GoogleFonts.inriaSerif(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                    ],
                  );
                },
              ),
            ),
          ),   ],
      ),
    );
  }
}
