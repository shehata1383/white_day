import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';
import '../../../controller/admin/add_new_section_controller.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';

class AddNewSectionScreen extends StatelessWidget {
  const AddNewSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddNewSectionController>(
      init: AddNewSectionController(),
      builder: (controller) {
        return Scaffold(
          body: Form(
            key: controller.formstate,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      appBarLogoScreen(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.4,
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
                            String? path = controller.selectedImagePaths[index];

                            return GestureDetector(
                              onTap: () => controller.pickImage(index),
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
                                                  controller.removeImage(index),
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

                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextField(
                            colorFill: AppColors.colorButton,
                            height: 60.h,
                            width: 150.w,
                            borderRadius: 20,
                            hintText: "Section:",
                            controller: controller.sectionController,
                            iconSize: 30.w,
                          ),
                          CustomTextField(
                            width: 150.w,
                            colorFill: AppColors.colorButton,
                            borderRadius: 20,
                            fontSize: 16.sp,
                            hintText: "Phone Number:",
                            controller: controller.phoneNumberController,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextField(
                            colorFill: AppColors.colorButton,
                            height: 60.h,
                            width: 150.w,
                            borderRadius: 20,
                            hintText: "Details:",
                            controller: controller.detailsController,
                            iconSize: 30.w,
                          ),
                          CustomTextField(
                            width: 150.w,
                            colorFill: AppColors.colorButton,
                            height: 60.h,
                            borderRadius: 20,
                            fontSize: 16.sp,
                            hintText: "Price:",
                            controller: controller.priceController,
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      CustomButton(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 68,
                        onPressed: () {},
                        buttonText: "Done",
                        color: AppColors.colorButton,
                        fontSize: 34.sp,
                        textColor: Colors.black,
                        isBold: true,
                        radius: 50.r,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
