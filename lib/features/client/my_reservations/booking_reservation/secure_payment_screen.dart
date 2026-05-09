import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/constants/images.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';
import '../../../../core/model/my_reservation/my_reservation_model.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_text_field.dart';
import 'booking_confirmed_screen.dart';

class SecurePaymentScreen extends StatelessWidget {
  const SecurePaymentScreen({super.key, required this.reservation});
  final MyReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            SizedBox(height: 5.h),
            Text(
              "Secure Payment",
              style: GoogleFonts.inriaSerif(
                fontStyle: FontStyle.italic,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Complete your booking by entering payment details below. ",
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
                borderRadius: BorderRadius.circular(10.r),
              ),
              padding: EdgeInsetsDirectional.all(2),
              margin: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  Text(
                    "Total: ${NumberFormat("#,###.##").format(11000)} L.E",
                    style: GoogleFonts.inriaSerif(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      CustomTextField(
                        colorFill: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.59,
                        borderRadius: 5.r,
                        prefixIcon: Icon(Icons.credit_card, size: 30.w),
                        hintText: "Card Number",
                        fontSize: 14.sp,
                        iconSize: 30.w,
                      ),
                      CustomTextField(
                        colorFill: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.15,
                        borderRadius: 5.r,
                        hintText: "MM",
                        fontSize: 14.sp,
                        iconSize: 30.w,
                      ),
                      CustomTextField(
                        colorFill: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.15,
                        borderRadius: 5.r,
                        hintText: "YY",
                        fontSize: 14.sp,
                        iconSize: 30.w,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    colorFill: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.8,
                    borderRadius: 5.r,
                    hintText: "**************",
                    fontSize: 14.sp,
                    iconSize: 30.w,
                  ),
                  SizedBox(height: 20.h),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Image.asset(Images.visa, height: 32, width: 127),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),SizedBox(height: 70.h),
            CustomButton(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 60.h,
              onPressed: () {
                Get.to(()=>BookingConfirmedScreen());
              },
              buttonText: "Pay Now",
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
