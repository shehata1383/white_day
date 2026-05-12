import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/features/vendor/pages/reservations/approval.dart';

import '../../../../core/model/vendor/reservation_model.dart';
import '../../../../core/widget/custom_button.dart';
import 'reservation_details_screen.dart';

class Reservations extends StatefulWidget {
  const Reservations({super.key, required this.listSections});
  final List<ReservationModel> listSections;

  @override
  State<Reservations> createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    // 1. منطق الفلترة
    List<ReservationModel> filteredList = widget.listSections;
    if (select == 1) {
      filteredList = widget.listSections
          .where((e) => e.isConfirmed == null)
          .toList();
    } else if (select == 2) {
      filteredList = widget.listSections
          .where((e) => e.isConfirmed == true)
          .toList();
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Reservations",
            style: GoogleFonts.inriaSerif(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
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
                      width: MediaQuery.of(context).size.width * 0.18,
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
                        "All",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 14.sp,
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
                      width: MediaQuery.of(context).size.width * 0.22,
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
                        "Request is pending",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 13.sp,
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    select = 2;
                  });
                },
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: MediaQuery.of(context).size.width * 0.23,
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
                        "confirmed",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    select == 2
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
          buildListRequest(model: filteredList, context: context),
        ],
      ),
    );
  }
}

Widget buildListRequest({
  required List<ReservationModel> model,
  required BuildContext context,
}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.64,
    height: MediaQuery.of(context).size.height * 0.65,
    child: Expanded(
      child: GridView.builder(
        itemCount: model.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 15.h,
          mainAxisExtent: 140.h,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 5.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.colorButton,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        model[index].isConfirmed == null
                            ? "Request is pending"
                            : model[index].isConfirmed == true
                            ? "Confirmed"
                            : "Reject",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      "${model[index].requestType} - ${model[index].vendorName}",
                      style: GoogleFonts.inriaSerif(
                        // خط كلاسيكي يشبه التصميم
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: Text(
                        "Client: ${model[index].clientName}",
                        style: GoogleFonts.inriaSerif(
                          // خط كلاسيكي يشبه التصميم
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                      child: Text(
                        model[index].requestDate,
                        style: GoogleFonts.inriaSerif(
                          // خط كلاسيكي يشبه التصميم
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Total: ${NumberFormat("#,###").format(model[index].price)} L.E",
                  style: GoogleFonts.inriaSerif(
                    // خط كلاسيكي يشبه التصميم
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.h),
                model[index].isConfirmed == null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            width: 100.w,
                            height: 30.h,
                            onPressed: () {
                              Get.to(() => Approval(isApproval: false));
                            },
                            buttonText: "Reject",
                            color: AppColors.colorButton,
                            fontSize: 20.sp,
                            textColor: Colors.black,
                            isBold: true,
                            radius: 30,
                          ),
                          CustomButton(
                            width: 100.w,
                            height: 30.h,
                            onPressed: () {
                              Get.to(() => Approval(isApproval: true));
                            },
                            buttonText: "Approval",
                            color: AppColors.colorButton,
                            fontSize: 20.sp,
                            textColor: Colors.black,
                            isBold: true,
                            radius: 30,
                          ),
                        ],
                      )
                    : CustomButton(
                        width: 140.w,
                        height: 30.h,
                        onPressed: () {
                          Get.to(() => ReservationDetailsScreen(model:model[index],));
                        },
                        buttonText: "View details",
                        color: AppColors.colorButton,
                        fontSize: 20.sp,
                        textColor: Colors.black,
                        isBold: true,
                        radius: 30,
                      ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
