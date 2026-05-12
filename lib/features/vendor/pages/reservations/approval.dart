import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';

class Approval extends StatelessWidget {
  const Approval({super.key,required this.isApproval});
final bool isApproval ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          appBarLogoScreen(),
          const SizedBox(height: 20),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.colorButton2,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.done, color: Colors.white, size: 50),
          ),
           Text(
            
           isApproval? "Approval":"Reject", style: GoogleFonts.inriaSerif(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
        ],
      )),
    );
  }
}