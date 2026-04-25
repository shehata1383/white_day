import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class ArtistScreen extends StatelessWidget {
   ArtistScreen({super.key});

  List listSubCategoryes = [
    {
      "nameCategores": "Bahaa Sultan",
      "price": "400,000 L.E",
      "imageSubCategores": Images.artist1,
      "route": RouteHelper.bahaaSultan,
    },
    {
      "nameCategores": "Mahmoud Al-Laithi",
      "price": "300,000 L.E",
      "imageSubCategores": Images.artist2,
      "route": RouteHelper.mahmoudAlLaithi,
    },
    {
      "nameCategores": "Tamer Hosny",
      "price": "3,000,000 L.E",
      "imageSubCategores": Images.artist3,
      "route": RouteHelper.tamerHosny,
    },
    {
      "nameCategores": "Amr Diab",
      "price": "5,000,000 L.E",
      "imageSubCategores": Images.artist4,
      "route": RouteHelper.amrDiab,
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
              "Artists",
              style: GoogleFonts.inriaSerif(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10.h),
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
                  return GestureDetector(
                    onTap: () => Get.toNamed(listSubCategoryes[index]['route']),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorDetails,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.colorDetails,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(15.r),
                                topEnd: Radius.circular(15.r),
                              ),
                              child: Image.asset(
                                listSubCategoryes[index]['imageSubCategores'],
                                width: double.infinity,
                                height: 140.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsetsDirectional.symmetric(horizontal: 2.w),
                            child: Text(
                              listSubCategoryes[index]['nameCategores'],
                              style: GoogleFonts.inriaSerif(
                                fontSize: 17.sp,
                                
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Align(alignment: AlignmentDirectional.centerEnd,
                            child: Padding(
                              padding:  EdgeInsetsDirectional.only(end: 2.w),
                              child: Text(
                                listSubCategoryes[index]['price'],
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,)
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
