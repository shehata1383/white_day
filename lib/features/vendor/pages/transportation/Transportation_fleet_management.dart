// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/model/vendor/transportation_driver_model.dart';
import 'package:white_day/features/vendor/pages/transportation/add_to_cars.dart';

import '../../../../core/model/vendor/transportation_car_model.dart';
import '../../../../core/widget/custom_button.dart';
import 'add_to_drivers.dart';

class TransportationFleetManagement extends StatefulWidget {
  const TransportationFleetManagement({
    super.key,
    required this.modelCar,
    required this.modelDriver,
  });
  final List<TransportationCarModel> modelCar;
  final List<TransportationDriverModel> modelDriver;

  @override
  State<TransportationFleetManagement> createState() =>
      _TransportationFleetManagementState();
}

class _TransportationFleetManagementState
    extends State<TransportationFleetManagement> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF9F6), // خلفية فاتحة لتناسب التصميم
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Text(
              "Transportation fleet management",
              style: GoogleFonts.inriaSerif(
                fontSize: 15.sp, // تم تكبير الخط قليلاً للوضوح
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            Divider(color: AppColors.colorButton2, thickness: 1),
            SizedBox(height: 10.h),
            
            // صف التبديل بين السيارات والسائقين
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabItem(title: "Cars", index: 0),
                _buildTabItem(title: "Drivers", index: 1),
              ],
            ),
            
            SizedBox(height: 20.h),
            
            // عرض القائمة بناءً على التحديد
            Expanded( // تم استخدام Expanded هنا بدلاً من SizedBox الثابت لمرونة أكبر
              child: select == 0
                  ? buildListCar(context: context, model: widget.modelCar)
                  : buildListDriver(context: context, model: widget.modelDriver),
            ),
          ],
        ),
      ),
    );
  }

  // دالة مساعدة لتقليل تكرار الكود في الـ Tabs
  Widget _buildTabItem({required String title, required int index}) {
    return GestureDetector(
      onTap: () => setState(() => select = index),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.3, // زيادة العرض قليلاً
            height: 45.h,
            decoration: BoxDecoration(
              color: AppColors.colorButton,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Text(
              title,
              style: GoogleFonts.inriaSerif(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          if (select == index)
            Container(
              width: 30.w,
              height: 25.h,
              decoration: BoxDecoration(
                color: AppColors.colorButton2,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(20.r),
                  bottomStart: Radius.circular(20.r),
                ),
              ),
              child: Icon(Icons.done, color: Colors.white, size: 16.sp),
            ),
        ],
      ),
    );
  }
}

// قائمة السيارات
Widget buildListCar({
  required List<TransportationCarModel> model,
  required BuildContext context,
}) {
  return Column(
    children: [
      Expanded( // تم استبدال SizedBox بـ Expanded لملء المساحة المتاحة
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          itemCount: model.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 15.h,
            mainAxisExtent: 220.h, // زيادة المساحة للصور
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    model[index].sectionName,
                    style: GoogleFonts.inriaSerif(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    model[index].carModel,
                    style: GoogleFonts.inriaSerif(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      model[index].image,
                      width: 150.w,
                      height: 100.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "${NumberFormat("#,###").format(model[index].price)} L.E",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: model[index].available ? AppColors.colorButton : Colors.grey[300],
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text(
                          model[index].available ? "Available" : "Reserved",
                          style: GoogleFonts.inriaSerif(fontSize: 12.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: CustomButton(
          width: 200.w,
          height: 45.h,
          onPressed: () => Get.to(() => const AddToCars()),
          buttonText: "Add New Car",
          color: AppColors.colorButton,
          fontSize: 18.sp,
          textColor: Colors.black,
          isBold: true,
          radius: 30,
        ),
      ),
    ],
  );
}

// قائمة السائقين
Widget buildListDriver({
  required List<TransportationDriverModel> model,
  required BuildContext context,
}) {
  return Column(
    children: [
      Expanded(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          itemCount: model.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 15.h,
            mainAxisExtent: 130.h,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              padding: EdgeInsets.all(10.w),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r), // صورة دائرية للسائق
                    child: Image.asset(
                      model[index].image,
                      width: 70.w,
                      height: 70.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 100,
                          child: Text(
                            "Name: ${model[index].driverName}",
                            style: GoogleFonts.inriaSerif(fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text("Year: ${model[index].driverYear}", style: GoogleFonts.inriaSerif(fontSize: 12.sp)),
                        Text("Place: ${model[index].place}", style: GoogleFonts.inriaSerif(fontSize: 12.sp)),
                        Text("Phone: ${model[index].phoneNumber}", style: GoogleFonts.inriaSerif(fontSize: 12.sp, fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: CustomButton(
          width: 200.w,
          height: 45.h,
          onPressed: () => Get.to(() => const AddToDrivers()),
          buttonText: "Add New Driver",
          color: AppColors.colorButton,
          fontSize: 18.sp,
          textColor: Colors.black,
          isBold: true,
          radius: 30,
        ),
      ),
    ],
  );
}