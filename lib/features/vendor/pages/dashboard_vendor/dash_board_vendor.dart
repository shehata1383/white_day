import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/constants/images.dart';

import '../../../../controller/vendor/dash_board_controller.dart';


class DashBoardVendor extends StatelessWidget {
  const DashBoardVendor({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
      init: DashBoardController(),
      builder: (controll) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(start: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
        
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(100.r),
                  child: Image.asset(
                    Images.vendorProfile,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.55,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Personal information",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
        
                Divider(color: AppColors.colorButton2),
                SizedBox(height: 10),
                Text(
                  "Name: Agha Wedding",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Email:Aghawedding99@gmail.com",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
               
                Text(
                  '''Phone Number:   
                     01122765497''',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Location: Cairo",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Job: Photographer",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Divider(color: AppColors.colorButton2),
                Text(
                  "Business:",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ), SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, // خانتين في العرض
                                crossAxisSpacing: 12.w, // المسافة الأفقية
                                mainAxisSpacing: 12.h, // المسافة الرأسية
                                childAspectRatio:
                                    1.1, // لجعل الخانة تميل للشكل المربع
                              ),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            String? path = controll.selectedImagePaths[index];

                            return GestureDetector(
                              onTap: () => controll.pickImage(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(
                                    color: path == null
                                        ? Colors.grey.shade300
                                        : const Color(0xFF8B2C4F),
                                    width: 1.2,
                                  ),
                                ),
                                child: path == null
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.add, size: 30.sp),
                                          SizedBox(height: 8.h),

                                          Text(
                                            "Add",
                                            style: TextStyle(
                                              fontSize: 24.sp,
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
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
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
                                              onTap: () =>
                                                  controll.removeImage(index),
                                              child: CircleAvatar(
                                                radius: 12.r,
                                                backgroundColor: Colors.white
                                                    .withOpacity(0.9),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.red,
                                                  size: 16.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                              ),
                            );
                          },
                        ),
                      ),
                
              ],
            ),
          ),
        );
      }
    );
  }
}
