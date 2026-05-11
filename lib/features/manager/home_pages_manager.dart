import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/helper/route_helper.dart';
import 'package:white_day/features/manager/pages/emergency_management.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

import '../../core/model/manager/emergency_management.dart';
import '../../core/model/manager/timeline_section.dart';
import 'pages/dash_board_manager.dart';
import 'pages/timeline_monitoring_screen.dart';
import 'pages/conflict_resolution.dart';


class HomePagesManager extends StatefulWidget {
  const HomePagesManager({super.key});

  @override
  State<HomePagesManager> createState() => _HomePagesManagerState();
}

class _HomePagesManagerState extends State<HomePagesManager> {
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
                  width: MediaQuery.of(context).size.width * 0.37,
                  height: MediaQuery.of(context).size.height * 0.784,
                  decoration: BoxDecoration(
                    color: AppColors.colorButton,
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
                                    Icons.edit_outlined,
                                    size: 30.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Text(
                                      "timeline monitoring",
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
                                  Icon(Icons.emergency, size: 30.w),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Text(
                                      "Emergency Management",
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
                                    Icons.chat_bubble_outline,
                                    size: 30.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Text(
                                      "Conflict resolution",
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
                      Padding(
                        padding:  EdgeInsetsDirectional.only(bottom: 15.h),
                        child: GestureDetector(
                          onTap: () {Get.offAllNamed(RouteHelper.homeScreenStart);},
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
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.784,
                  child: selectPages == 0
                      ? DashBoardManager()
                      : selectPages == 1
                      ? TimelineMonitoringScreen(
                          listSections: [
                            TimelineSection(
                              time: "10:00 AM",
                              data: "Bridal Makeup: Sara salama ",
                            ),
                            TimelineSection(
                              time: "02:00 PM",
                              data: "Session : Aboutaleb Wedding",
                            ),
                            TimelineSection(
                              time: "12:00 PM",
                              data: "Cars",
                            ),
                            TimelineSection(
                              time: "05:00 PM",
                              data: "Engagement in Cinderella Hall",
                            ),
                          ],
                        )
                      : selectPages == 2
                      ? EmergencyManagement(
                         listSections: [
                            EmergencyManagementModel(
                              clientName: "Ahmed omar",
                              data: "Sudden cancellation on 17-6-2025",
                              status: "In process",
                            ),
                            EmergencyManagementModel(
                              clientName: "",
                              data: "Problem between vendor and customer",
                              status: "Processed",
                            ),
                           
                          ],
                      )
                      : ConflictResolution( listSections: [
                            EmergencyManagementModel(
                              clientName: "Sara Ahmed",
                              data: "Customer complaint about delay",
                              status: "In process",
                            ),
                            EmergencyManagementModel(
                              clientName: "Menna Ali",
                              data: "Customer complaint about a makeup artist",
                              status: "Processed",
                            ),
                            EmergencyManagementModel(
                              clientName: "Ahmed Mohmmed",
                              data: "A client wants to change the date from 15-5-2025",
                              status: "In process",
                            ),
                           
                          ],),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
