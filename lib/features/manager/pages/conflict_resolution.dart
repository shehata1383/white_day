import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/model/manager/emergency_management.dart';

class ConflictResolution extends StatelessWidget {
  const ConflictResolution({super.key, required this.listSections});
  final List<EmergencyManagementModel> listSections;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Text(
              "Operations History",
              style: GoogleFonts.inriaSerif(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Divider(color: AppColors.colorButton2, thickness: 1),
            SizedBox(height: 15.h),
        
            SizedBox(
              // تم توسيع العرض قليلاً ليتناسب مع محتوى البيانات واسم العميل
              width: MediaQuery.of(context).size.width * 0.8, 
              height: MediaQuery.of(context).size.height * 0.75,
              child: GridView.builder(
                // تم حذف Expanded فوراً لأنه يسبب توقف الواجهة داخل SizedBox
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                itemCount: listSections.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 25.h,
                  mainAxisExtent: 135.h, // زيادة الارتفاع ليتسع للنصوص بوضوح
                ),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // حاوية البيانات والعميل
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
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Text(
                                listSections[index].data,
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            if (listSections[index].clientName != null && 
                                listSections[index].clientName!.isNotEmpty)
                              Padding(
                                padding: EdgeInsets.only(top: 8.h, right: 15.w),
                                child: Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text(
                                    "Client: ${listSections[index].clientName}",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      
                      // حاوية الحالة (Status)
                      Container(
                        width: 140.w,
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        decoration: BoxDecoration(
                          color: AppColors.colorButton,
                          borderRadius: BorderRadius.circular(25.r),
                          border: Border.all(
                            color: AppColors.colorButton2.withOpacity(0.2)
                          ),
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
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}