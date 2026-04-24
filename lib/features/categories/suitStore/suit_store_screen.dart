import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/helper/route_helper.dart';
import '../../widget/appbar_logo_screen.dart';
import '../../widget/filtter_screen/fillter_screen.dart';

class SuitStoreScreen extends StatefulWidget {
  const SuitStoreScreen({super.key});

  @override
  State<SuitStoreScreen> createState() => _SuitStoreScreenState();
}

class _SuitStoreScreenState extends State<SuitStoreScreen> {
  List<Map<String, dynamic>> listSubCategoryes = <Map<String, dynamic>>[
    {
      "nameCategores": "Royle Black",
      "price": "12,500 L.E",
      "imageSubCategores": Images.Royle_Black,
       "route": RouteHelper.royalBlack,
    },
    {
      "nameCategores": "Noble White",
      "price": "11,500 L.E",
      "imageSubCategores": Images.Noble_White,
       "route": RouteHelper.nobleWhite,
    },
    {
      "nameCategores": "Shadow Royal",
      "price": "13,500 L.E",
      "imageSubCategores": Images.Shadow_Royal,
       "route": RouteHelper.shadowRoyal,
    },
    {
      "nameCategores": "Velet Burgundy",
      "price": "12,500 L.E",
      "imageSubCategores": Images.Velet_Burgundy,
       "route": RouteHelper.veletBurgundy,
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
              "Suits",
              style: GoogleFonts.inriaSerif(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10.h),
 FillterScreen(),            SizedBox(height: 15.h),

            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: listSubCategoryes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  mainAxisExtent: 190.h,
                ),
                itemBuilder: (context, index) {
                  var suilt = listSubCategoryes[index];

                  return InkWell(
                    onTap: () {
                      if (suilt['route'] != null) {
                        Get.toNamed(suilt['route']);
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
                            ),
                            child: Image.asset(
                              suilt['imageSubCategores'],
                              width: double.infinity,
                              height: 140.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  suilt['nameCategores'],
                                  style: GoogleFonts.inriaSerif(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text(
                                    suilt['price'],
                                    style: GoogleFonts.inriaSerif(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                               
                              ],
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

  Widget _buildHeader() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Image.asset(Images.logo, width: 300.w),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(Images.appbarStyle, width: 80.w),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(Images.appbarStyle, width: 80.w),
        ),
      ],
    );
  }

  Widget _buildFilters() {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: []),
    );
  }

  Widget _buildActiveFilter(
    String label,
    String? currentValue,
    List<DropdownMenuItem<String>> items,
    Function(String?) onChanged,
  ) {
    return Container(
      width: 140.w,
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.colorfilter,
        borderRadius: BorderRadius.circular(6),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: currentValue,
          hint: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: GoogleFonts.inriaSerif(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              const Icon(Icons.unfold_more, size: 18),
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
