import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class MakeupArtistScreen extends StatefulWidget {
  const MakeupArtistScreen({super.key});

  @override
  State<MakeupArtistScreen> createState() => _MakeupArtistScreenState();
}

class _MakeupArtistScreenState extends State<MakeupArtistScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "By-Sara salama",
      "price": "Starting from 5,500L.E",
      "imageSubCategores": Images.makeup1,
      "route": RouteHelper.saraSAlama,
    },
    {
      "nameCategores": "By-yasmin ahmed",
      "price": "Starting from 6,500L.E",
      "imageSubCategores": Images.makeup2,
      "route": RouteHelper.yasminAhmed,
    },
    {
      "nameCategores": "By-Hend mohmed",
      "price": "Starting from 7,000L.E",
      "imageSubCategores": Images.makeup3,
      "route": RouteHelper.hendMohamed,
    },
    {
      "nameCategores": "By-Esraa mohmed",
      "price": "Starting from 8,000L.E",
      "imageSubCategores": Images.makeup4,
      //"route": RouteHelper.SaraS_alama,
    },
    {
      "nameCategores": "By-Rana fathy",
      "price": "Starting from 7,500L.E",
      "imageSubCategores": Images.makeup5,
      //"route": RouteHelper.SaraS_alama,
    },
    {
      "nameCategores": "By-Sohila ahmed",
      "price": "Starting from 8,500L.E",
      "imageSubCategores": Images.makeup6,
      //"route": RouteHelper.SaraS_alama,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
          children: [
            appBarLogoScreen(),

            Text(
              "Makeup Artists",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            FillterScreen(),
            SizedBox(height: 15.h),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: listSubCategoryes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  mainAxisExtent: 200.h,
                ),
                itemBuilder: (context, index) {
                  var item = listSubCategoryes[index];

                  return InkWell(
                    onTap: () {
                      if (item['route'] != null) {
                        Get.toNamed(item['route']);
                      } else {
                        print("Route not found for ${item['nameCategores']}");
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(0.w),
                      decoration: BoxDecoration(
                        color: AppColors.colorDetails,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(15.r),
                              topEnd: Radius.circular(15.r),
                            ),
                            child: Image.asset(
                              item['imageSubCategores'],
                              width: double.infinity,
                              height: 140.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            item['nameCategores'],
                            style: GoogleFonts.inriaSerif(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            item['price'],
                            style: GoogleFonts.inriaSerif(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
