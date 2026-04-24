import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/images.dart';

Widget appBarLogoScreen(){
  return Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(Images.logo, width: 350.w, height: 90.h),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    Images.appbarStyle,
                    width: 100.w,
                    height: 90.h,
                  ),
                ),
                Positioned(
                  right: -25.w,
                  top: 0,
                  child: Image.asset(
                    Images.appbarStyle,
                    width: 100.w,
                    height: 90.h,
                  ),
                ),
              ],
            );
}