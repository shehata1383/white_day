import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/core/constants/images.dart';
import 'package:white_day/core/helper/route_helper.dart';
import 'package:white_day/core/model/vendor/special_offer_model.dart';
import 'package:white_day/features/vendor/pages/wallet.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';
import '../../core/model/manager/emergency_management.dart';
import '../../core/model/vendor/reservation_model.dart';
import 'pages/dash_board_vendor.dart';
import 'pages/reservations/reservations.dart';
import 'pages/availability_update.dart';
import 'pages/special_offers.dart';

class HomePagesVendor extends StatefulWidget {
  const HomePagesVendor({super.key});

  @override
  State<HomePagesVendor> createState() => _HomePagesVendorState();
}

class _HomePagesVendorState extends State<HomePagesVendor> {
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
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.784,
                  decoration: BoxDecoration(color: AppColors.colorButton),
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
                                      fontSize: 14,
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
                                    Icons.calendar_month_outlined,
                                    size: 30.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Text(
                                      "Availability update",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 14,
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
                                  Icon(Icons.edit, size: 30.w),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.20,
                                    child: Text(
                                      "Reservations",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 13,
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
                                    Icons.directions_car_outlined,
                                    size: 30.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.20,
                                    child: Text(
                                      "Transportation fleet management",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 14,
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
                                selectPages = 4;
                              });
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 3.w,
                                vertical: 5.h,
                              ),
                              decoration: selectPages == 4
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
                                  Icon(Icons.redeem_outlined, size: 30.w),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Text(
                                      "Special offers",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 14,
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
                                selectPages = 5;
                              });
                            },
                            child: Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 3.w,
                                vertical: 5.h,
                              ),
                              decoration: selectPages == 5
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
                                  Icon(Icons.wallet_outlined, size: 30.w),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Text(
                                      "Wallet",
                                      style: GoogleFonts.inriaSerif(
                                        fontSize: 14,
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
                        padding: EdgeInsetsDirectional.only(bottom: 15.h),
                        child: GestureDetector(
                          onTap: () {
                            Get.offAllNamed(RouteHelper.homeScreenStart);
                          },
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10.w,
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
                  width: MediaQuery.of(context).size.width * 0.68,
                  height: MediaQuery.of(context).size.height * 0.784,
                  child: selectPages == 0
                      ? DashBoardVendor()
                      : selectPages == 1
                      ? AvailabilityUpdateScreen()
                      : selectPages == 2
                      ? Reservations(
                          listSections: [
                            ReservationModel(
                              clientName: "wafaa ahmed",

                              requestType: 'Makeup Artist',
                              vendorName: 'Sara salame',
                              requestDate: 'Monday,October26.2026',
                              price: 11000,
                              isConfirmed: null,
                            ),
                            ReservationModel(
                              requestType: 'Photographer',
                              vendorName: 'Agha Wedding',
                              clientName: 'Ahmed mohmmed',
                              requestDate: 'Thursday,April30.2026',
                              price: 3000,
                              isConfirmed: true,
                            ),
                          ],
                        )
                      : selectPages == 3
                      ? Wallet()
                      : selectPages == 4
                      ? SpecialOffers(
                          specialOffer: [
                            SpecialOfferModel(
                              servecs: ["Photoshoot", "Video"],
                              price: 1000,
                              validUntil: "16-6-2026",
                              image: Images.photograperOfer,
                            ),
                            SpecialOfferModel(
                              servecs: ["Engagement makeup", "veil styling"],
                              price: 1750,
                              validUntil: "27-7-2026",
                              image: Images.emergenceOfer,
                            ),
                          ],
                        )
                      : Wallet(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
