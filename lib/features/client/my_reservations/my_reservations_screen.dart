import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/model/my_reservation/my_reservation_model.dart';
import '../../../core/widget/custom_button.dart';
import '../../widget/appbar_logo_screen.dart';
import 'reservation_done/my_reservation_done_screen.dart';
import 'booking_reservation/recording_date_my_reservation.dart';

class MyReservationsScreen extends StatelessWidget {
  const MyReservationsScreen({super.key, required this.data});
  final List<MyReservationModel> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBarLogoScreen(),
              Text(
                "My Reservations",
                style: GoogleFonts.inriaSerif(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.h),
              Column(
                children: data.map((reservation) {
                  return Container(
                    margin: EdgeInsetsDirectional.only(bottom: 20.h),
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(30.r),
                      gradient: LinearGradient(
                        stops: [0.4, 0.95],
                        colors: [
                          AppColors.colorMyReservation1,
                          AppColors.colorMyReservation2,
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(15.r),
                          child: Image.asset(
                            reservation.image,
                            width: 140.w,
                            height: 140.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Text(
                                reservation.title,
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.52,
                              child: Text(
                                reservation.date,
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Divider(color: AppColors.colorButton2),
                            Text(
                              reservation.address,
                              style: GoogleFonts.inriaSerif(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: AppColors.colorButton2),
                            SizedBox(height: 30.h),
                            reservation.pay
                                ?  Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 15.w,
                                vertical: 2.h,
                              ),
                              width: MediaQuery.of(context).size.width * 0.53,
                              height: 52,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadiusDirectional.circular(
                                  50.r,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Confirmed",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),

                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(width: 5.w),
                                  Icon(
                                    Icons.done,
                                    color: Colors.green,
                                    size: 30.w,
                                  ),
                                ],
                              ),
                            )
                                : SizedBox.shrink(),
                            reservation.pay
                                ? SizedBox(height: 10.h)
                                : SizedBox.shrink(),
                            reservation.pay
                                ?
                                GestureDetector(
                                    onTap: () {
                                       Get.to(
                                        () => MyReservationDoneScreen(
                                          reservation: reservation,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsetsDirectional.symmetric(
                                        horizontal: 10.w,
                                        vertical: 2.h,
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.53,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                              50.r,
                                            ),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "View Details",
                                            style: GoogleFonts.inriaSerif(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.colorText,
                                            ),

                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(width: 10.w),
                                          Icon(
                                            Icons.arrow_circle_right_outlined,
                                            color: AppColors.colorText,
                                            size: 25.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ) 
                                : SizedBox.shrink(),
                            reservation.pay
                                ? SizedBox.shrink()
                                : CustomButton(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 52,
                                    onPressed: () {
                                      Get.to(()=>RecordingDateMyReservation(reservation: reservation,));
                                    },
                                    buttonText: "Pay Now",
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                    textColor: AppColors.colorText,
                                    isBold: true,
                                    radius: 50.r,
                                  ),
                            SizedBox(height: 10.h),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),

              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}
