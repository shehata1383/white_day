import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import '../../../core/model/my_reservation/my_reservation_model.dart';
import '../../../core/widget/custom_button.dart';
import 'secure_payment_screen.dart';

class ReviewBookingScreen extends StatelessWidget {
  const ReviewBookingScreen({super.key, required this.reservation});
  final MyReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            SizedBox(width: double.infinity,),
            Text(
              "Review Your Booking",
              style: GoogleFonts.inriaSerif(
                fontStyle: FontStyle.italic,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Please review your booking details before proceeding to payment",
              style: GoogleFonts.inriaSerif(
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              decoration: BoxDecoration(
                color: AppColors.colorDetails,
                borderRadius: BorderRadius.circular(15.r),
              ),
              padding: EdgeInsetsDirectional.symmetric(vertical: 10),
              margin: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bridal Makeup",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "${NumberFormat("#,###.##").format(11000)} L.E",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                    child: Divider(color: AppColors.colorButton2, height: 10.h),
                  ),
                  Text(
                    reservation.date,
                    style: GoogleFonts.inriaSerif(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                    child: Divider(color: AppColors.colorButton2, height: 10.h),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total:",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "${NumberFormat("#,###.##").format(11000)} L.E",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70.h),
            CustomButton(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 60.h,
              onPressed: () {
                Get.to(()=>SecurePaymentScreen(reservation: reservation,));
              },
              buttonText: "Proceed to Payment",
              color: AppColors.colorButton2,
              fontSize: 24.sp,
              textColor: Colors.white,
              isBold: true,
              radius: 12.r,
            ),
          ],
        ),
      ),
    );
  }
}
