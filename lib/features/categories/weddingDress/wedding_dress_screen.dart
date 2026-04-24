import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class WeddingDressScreen extends StatefulWidget {
  const WeddingDressScreen({super.key});

  @override
  State<WeddingDressScreen> createState() => _WeddingDressScreenState();
}

class _WeddingDressScreenState extends State<WeddingDressScreen> {
  List listSubCategoryes = [
    {
      "nameCategores": "Royal Dream",
      "price": "10,000 L.E",
      "imageSubCategores": Images.dress1,
      "route": RouteHelper.royalDream,
    },
    {
      "nameCategores": "Golden Queen",
      "price": "15,000 L.E",
      "imageSubCategores": Images.dress2,
      "route": RouteHelper.goldenQueen,
    },
    {
      "nameCategores": "Moonlight",
      "price": "17,000 L.E",
      "imageSubCategores": Images.dress3,
          "route": RouteHelper.moonLightScreen,
    },
    {
      "nameCategores": "Diamond Glow",
      "price": "11,500 L.E",
      "imageSubCategores": Images.dress4,
       "route": RouteHelper.diamondGlow,
    },
    {
      "nameCategores": "Lavender Dream",
      "price": "9,000 L.E",
      "imageSubCategores": Images.dress5,
    },
    {
      "nameCategores": "Sweet Girl",
      "price": "12,000 L.E",
      "imageSubCategores": Images.dress6,
    },
    {
      "nameCategores": "Cherry Glow",
      "price": "14,000 L.E",
      "imageSubCategores": Images.dress7,
    },
    {
      "nameCategores": "Elite Dress",
      "price": "16,500 L.E",
      "imageSubCategores": Images.dress8,
    },
  ];

  String? selectPrice;
  String? selectLocation;
  String? selectRate;

  List<DropdownMenuItem<Object>>? selectPriceList = [
    DropdownMenuItem(value: "lessThan2999", child: Text("Less than 2999")),
    DropdownMenuItem(value: "3000to5000", child: Text("3000 - 5000")),
    DropdownMenuItem(value: "moreThan5000", child: Text("More than 5000")),
  ];
  List<DropdownMenuItem<Object>>? selectLocationList = [
    DropdownMenuItem(value: "cairo", child: Text("Cairo")),
    DropdownMenuItem(value: "El maadi", child: Text("El maadi")),
    DropdownMenuItem(value: "10th of ramadan", child: Text("10th of ramadan")),
  ];
  List<DropdownMenuItem<Object>>? selectRateList = [
    DropdownMenuItem(value: "1.0", child: Text("1 star")),
    DropdownMenuItem(value: "2.0", child: Text("2 stars")),
    DropdownMenuItem(value: "3.0", child: Text("3 stars")),
    DropdownMenuItem(value: "4.0", child: Text("4 stars")),
    DropdownMenuItem(value: "5.0", child: Text("5 stars")),
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
              "Dresses",
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
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorDetails,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(15.r),
                              topEnd: Radius.circular(15.r),
                            ),                            child: Image.asset(
                              item['imageSubCategores'],
                              width: double.infinity,
                              height: 140.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Text(
                              item['nameCategores'],
                              style: GoogleFonts.inriaSerif(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                item['price'],
                                style: GoogleFonts.inriaSerif(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
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
                  fontSize: 18.sp,
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


