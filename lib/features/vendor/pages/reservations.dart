import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';

import '../../../core/model/manager/emergency_management.dart';

class Reservations extends StatefulWidget {
  const Reservations({super.key, required this.listSections});
  final List<EmergencyManagementModel> listSections;

  @override
  State<Reservations> createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
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
                onTap: () { setState(() {
                    select = 0;
                  });},
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
                onTap: () { setState(() {
                    select = 1;
                  });},
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
        ],
      ),
    );
  }
}
