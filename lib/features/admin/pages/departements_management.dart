import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/helper/route_helper.dart';
import '../../../core/widget/custom_button.dart';

class DepartementsManagement extends StatelessWidget {
  const DepartementsManagement({super.key, required this.listSections});
  
  // يفضل دائماً تحديد نوع البيانات لضمان عدم حدوث أخطاء وقت التشغيل
  final List<String> listSections; 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Departements management",
            style: GoogleFonts.inriaSerif(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(color: AppColors.colorButton2),
          SizedBox(height: 10.h),
          
          // إزالة Expanded والاعتماد على SizedBox لتحديد المساحة
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8, // قمت بتوسيع العرض قليلاً ليناسب الخط الكبير
            height: MediaQuery.of(context).size.height * 0.5,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              itemCount: listSections.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 15.h,
                mainAxisExtent: 60.h, // زيادة بسيطة لتجنب قص النص
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.colorButton,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    listSections[index],
                    style: GoogleFonts.inriaSerif(
                      fontSize: 20.sp, // تقليل الخط قليلاً ليتناسب مع الارتفاع (55h)
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
            ),
          ),
          
          SizedBox(height: 30.h),
          
          CustomButton(
            width: MediaQuery.of(context).size.width * 0.65,
            height: 60.h,
            onPressed: () {
              Get.toNamed(RouteHelper.addNewSectionScreen);
            },
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            buttonText: "Add To Sections",
            color: AppColors.colorButton,
            fontSize: 22.sp,
            textColor: Colors.black,
            isBold: true,
            radius: 20.r,
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}