import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import '../../../controller/admin/add_new_section_controller.dart';

class AddNewSectionScreen extends StatelessWidget {
  const AddNewSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddNewSectionController>(
      init: AddNewSectionController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: Column(
                children: [
                  appBarLogoScreen(),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.4,
                  child: GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,          // خانتين في العرض
        crossAxisSpacing: 12.w,     // المسافة الأفقية
        mainAxisSpacing: 12.h,      // المسافة الرأسية
        childAspectRatio: 1.1,      // لجعل الخانة تميل للشكل المربع
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        String? path = controller.selectedImagePaths[index];

        return GestureDetector(
          onTap: () => controller.pickImage(index),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: path == null ? Colors.grey.shade300 : const Color(0xFF8B2C4F),
                width: 1.2,
              ),
            ),
            child: path == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_a_photo_outlined, color: Colors.grey[400], size: 28.sp),
                      SizedBox(height: 8.h),
                      Text(
                        "Add +",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                : Stack(
                    fit: StackFit.expand,
                    children: [
                      // عرض الصورة المختارة
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.file(
                          File(path),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // زر الحذف (يظهر فوق الصورة)
                      Positioned(
                        top: 8,
                        right: 8,
                        child: GestureDetector(
                          onTap: () => controller.removeImage(index),
                          child: CircleAvatar(
                            radius: 12.r,
                            backgroundColor: Colors.white.withOpacity(0.9),
                            child: Icon(Icons.close, color: Colors.red, size: 16.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    ),
                )  ],
              ),
            ),
          ),
        );
      },
    );
  }
}
