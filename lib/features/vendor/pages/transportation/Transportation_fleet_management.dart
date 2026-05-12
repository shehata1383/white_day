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
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Transportation fleet management",
              style: GoogleFonts.inriaSerif(
                fontSize: 14.sp,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            Divider(color: AppColors.colorButton2),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      select = 0;
                    });
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 40.h,
                        padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 5.w,
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.colorButton,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Text(
                          "Cars",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      select == 0
                          ? Container(
                              width: 35,
                              height: 25,
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 5.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(20.r),
                                  bottomStart: Radius.circular(20.r),
                                ),
                              ),
                              child: Icon(Icons.done, color: Colors.white),
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      select = 1;
                    });
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 40.h,
                        padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 5.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.colorButton,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Text(
                          "Drivers",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                      select == 1
                          ? Container(
                              width: 35,
                              height: 25,
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 5.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.colorButton2,
                                borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(20.r),
                                  bottomStart: Radius.circular(20.r),
                                ),
                              ),
                              child: Icon(Icons.done, color: Colors.white),
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            select == 0
                ? buildListCar(context: context, model: widget.modelCar)
                : buildListDriver(context: context, model: widget.modelDriver),
          ],
        ),
      ),
    );
  }
}

Widget buildListCar({
  required List<TransportationCarModel> model,
  required BuildContext context,
}) {
  return Column(
    children: [
      SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.64,
          height: MediaQuery.of(context).size.height * 0.56,
          child: Expanded(
            child: GridView.builder(
              itemCount: model.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 15.h,
                mainAxisExtent: 195.h,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          model[index].sectionName,
                          style: GoogleFonts.inriaSerif(
                            // خط كلاسيكي يشبه التصميم
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        model[index].carModel,
                        style: GoogleFonts.inriaSerif(
                          // خط كلاسيكي يشبه التصميم
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(15.r),
                        child: Image.asset(
                          model[index].image,
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 100.h,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${NumberFormat("#,###").format(model[index].price)} L.E",
                            style: GoogleFonts.inriaSerif(
                              // خط كلاسيكي يشبه التصميم
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.colorButton,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text(
                              model[index].available == true
                                  ? "Available"
                                  : "Reserved",
                              style: GoogleFonts.inriaSerif(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
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
        ),
      ),
      SizedBox(height: 10.h),
      CustomButton(
        width: 180.w,
        height: 30.h,
        onPressed: () {
          Get.to(() => AddToCars());
        },
        buttonText: "Add To Car",
        color: AppColors.colorButton,
        fontSize: 20.sp,
        textColor: Colors.black,
        isBold: true,
        radius: 30,
      ),
    ],
  );
}

Widget buildListDriver({
  required List<TransportationDriverModel> model,
  required BuildContext context,
}) {
  return Column(
    children: [
      SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.64,
          height: MediaQuery.of(context).size.height * 0.56,
          child: Expanded(
            child: GridView.builder(
              itemCount: model.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 15.h,
                mainAxisExtent: 170.h,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(15.r),
                        child: Image.asset(
                          model[index].image,
                          width: 90,
                          height: 90,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 140.w,
                            child: Text(
                              "Name: ${model[index].driverName}",
                              style: GoogleFonts.inriaSerif(
                                // خط كلاسيكي يشبه التصميم
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            "Year: ${model[index].driverYear}",
                            style: GoogleFonts.inriaSerif(
                              // خط كلاسيكي يشبه التصميم
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(height: 10.h),
                          SizedBox(
                            width: 140.w,
                            child: Text(
                              "Place: ${model[index].place}",
                              style: GoogleFonts.inriaSerif(
                                // خط كلاسيكي يشبه التصميم
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            width: 140.w,
                            child: Text(
                              "Phone Number: ${model[index].phoneNumber}",
                              style: GoogleFonts.inriaSerif(
                                // خط كلاسيكي يشبه التصميم
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
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
        ),
      ),
      SizedBox(height: 10.h),
      CustomButton(
        width: 180.w,
        height: 30.h,
        onPressed: () {
          Get.to(() => AddToDrivers());
        },
        buttonText: "Add To Drive",
        color: AppColors.colorButton,
        fontSize: 20.sp,
        textColor: Colors.black,
        isBold: true,
        radius: 30,
      ),
    ],
  );
}
