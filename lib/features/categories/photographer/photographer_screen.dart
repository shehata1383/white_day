import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class PhotographerScreen extends StatefulWidget {
  const PhotographerScreen({super.key});

  @override
  State<PhotographerScreen> createState() => _PhotographerScreenState();
}

class _PhotographerScreenState extends State<PhotographerScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "By- Agha Wedding",
      "price": "Starting from 3000 L.E",
      "imageSubCategores": Images.photo1,
      "route": RouteHelper.aghaWedding,
    },
    {
      "nameCategores": "By- Dart Wedding",
      "price": "Starting from 12,000 L.E",
      "imageSubCategores": Images.dart2,
      "route": RouteHelper.dartWedding,
    },
    {
      "nameCategores": "By-Aboutaleb Wedding",
      "price": "Starting from 15,000 L.E",
      "imageSubCategores": Images.aboutaleb3,
      "route": RouteHelper.aboutalebWedding,
    },
    {
      "nameCategores": "By- Omar ahmed",
      "price": "Starting from 4500 L.E",
      "imageSubCategores": Images.photo4,
    },
    {
      "nameCategores": "By- Wael ameen",
      "price": "Starting from 2500 L.E",
      "imageSubCategores": Images.photo5,
    },
    {
      "nameCategores": "By- Youssef ali",
      "price": "Starting from 4500 L.E",
      "imageSubCategores": Images.photo6,
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
              "Photographers",
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
                  mainAxisExtent: 205.h,
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
                              borderRadius: BorderRadius.circular(0.r),
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
                          SizedBox(height: 8.h),
                          Text(
                            listSubCategoryes[index]['nameCategores'],
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
                            listSubCategoryes[index]['price'],
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
