import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/model/my_reservation/my_reservation_model.dart';
import '../../../widget/appbar_logo_screen.dart';

class MyReservationDoneScreen extends StatelessWidget {
  const MyReservationDoneScreen({super.key, required this.reservation});
  final MyReservationModel reservation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            SizedBox(height: 20.h),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 20.h),
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 5.w,
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
                      width: 130.w,
                      height: 130.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
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
                        width: MediaQuery.of(context).size.width * 0.6,
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Client: ${reservation.clientName}",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Phone number: ${reservation.clientNumber}",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(color: AppColors.colorButton2),
                       Divider(color: AppColors.colorButton2),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          reservation.packageName,
                          style: GoogleFonts.inriaSerif(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ), Divider(color: AppColors.colorButton2),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Total: ${NumberFormat("#,###.##").format(reservation.price)} L.E",
                          style: GoogleFonts.inriaSerif(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ), Divider(color: AppColors.colorButton2),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Row(
                          children: [
                            Text(
                              "Payment done",
                              style: GoogleFonts.inriaSerif(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10.w,)
,                            Icon(Icons.done,color: AppColors.colorButton2,size: 30.w,)
                          ],
                        ),
                      ),

                      SizedBox(height: 10.h),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
