import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class BarbarShopScreen extends StatefulWidget {
  const BarbarShopScreen({super.key});

  @override
  State<BarbarShopScreen> createState() => _BarbarShopScreenState();
}

class _BarbarShopScreenState extends State<BarbarShopScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "Royal Groom Package",
      "price": "Starting From 4,200 L.E",
      "imageSubCategores": Images.barbar_shop1,
      "route": RouteHelper.royalGroomPackageScreen,
    },
    {
      "nameCategores": "Groom Glow Package",
      "price": "Starting From 1,450 L.E",
      "imageSubCategores": Images.barbar_shop2,
      "route": RouteHelper.groomGlowPackage,
    },
    {
      "nameCategores": "The Gentelman Package",
      "price": "Starting From 2,900L.E",
      "imageSubCategores": Images.barbar_shop3,
      "route": RouteHelper.theGentelmanPackage,
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
              "Barbar Shop",
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
                  mainAxisExtent: 209.h,
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
                                fontSize: 18.sp,
                                
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Padding(
                            padding:  EdgeInsetsDirectional.symmetric(horizontal: 2.w),
                            child: Text(
                              listSubCategoryes[index]['price'],
                              style: GoogleFonts.inriaSerif(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
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

  Widget _buildFilterButton(
    String label,
    String? value,
    List<DropdownMenuItem<Object>>? items,
    Function(Object?) onChanged,
  ) {
    return Container(
      width: 120.w,
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.colorfilter,
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: value,
          hint: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: GoogleFonts.inriaSerif(
                  fontSize: 22.sp,
                  color: Colors.black,
                ),
              ),
              const Icon(Icons.unfold_more, size: 18, color: Colors.black),
            ],
          ),
          isExpanded: true,
          icon: const SizedBox.shrink(),
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
