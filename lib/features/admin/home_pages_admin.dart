import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/features/admin/pages/dash_board.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import 'pages/departements_management.dart';
import 'pages/financial_reports.dart';
import 'pages/operations_history.dart';

class HomePagesAdmin extends StatefulWidget {
  const HomePagesAdmin({super.key});

  @override
  State<HomePagesAdmin> createState() => _HomePagesAdminState();
}

class _HomePagesAdminState extends State<HomePagesAdmin> {
  int selectPages = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.symmetric(vertical: 17.h),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.784,
                  decoration: BoxDecoration(
                    color: AppColors.colorButton,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectPages = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 3.w,
                                vertical: 5.h,
                              ),
                              decoration: selectPages == 0
                                  ? BoxDecoration(
                                      gradient: LinearGradient(
                                        stops: [0.4, 0.95],
                                        colors: [
                                          AppColors.colordrawer1,
                                          AppColors.colordrawer2,
                                        ],
                                      ),
                                    )
                                  : null,
                              child: Row(
                                children: [
                                  Icon(Icons.home_outlined, size: 30.w),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Dashboard",
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectPages = 1;
                              });
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 3.w,
                                vertical: 5.h,
                              ),
                              decoration: selectPages == 1
                                  ? BoxDecoration(
                                      gradient: LinearGradient(
                                        stops: [0.4, 0.95],
                                        colors: [
                                          AppColors.colordrawer1,
                                          AppColors.colordrawer2,
                                        ],
                                      ),
                                    )
                                  : null,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.accessibility_outlined,
                                    size: 30.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.28,
                                    child: Text(
                                      "Departements management",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectPages = 2;
                              });
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 3.w,
                                vertical: 5.h,
                              ),
                              decoration: selectPages == 2
                                  ? BoxDecoration(
                                      gradient: LinearGradient(
                                        stops: [0.4, 0.95],
                                        colors: [
                                          AppColors.colordrawer1,
                                          AppColors.colordrawer2,
                                        ],
                                      ),
                                    )
                                  : null,
                              child: Row(
                                children: [
                                  Icon(Icons.edit_square, size: 30.w),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.28,
                                    child: Text(
                                      "Financial Reports",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectPages = 3;
                              });
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 3.w,
                                vertical: 5.h,
                              ),
                              decoration: selectPages == 3
                                  ? BoxDecoration(
                                      gradient: LinearGradient(
                                        stops: [0.4, 0.95],
                                        colors: [
                                          AppColors.colordrawer1,
                                          AppColors.colordrawer2,
                                        ],
                                      ),
                                    )
                                  : null,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.signal_cellular_alt_outlined,
                                    size: 30.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.28,
                                    child: Text(
                                      "Operations History",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.logout, size: 30.w),
                              SizedBox(width: 5.w),
                              Text(
                                "Logout",
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.784,
                  child: selectPages == 0
                      ? DashBoard()
                      : selectPages == 1
                      ? DepartementsManagement(
                          listSections: [
                            "Makeup artist",
                            "Dress Wedding",
                            "Cars",
                            "Halls",
                          ],
                        )
                      : selectPages == 2
                      ? FinancialReports()
                      : OperationsHistory(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
