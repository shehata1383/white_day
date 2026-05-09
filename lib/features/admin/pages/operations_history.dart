import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_day/core/constants/styles.dart';

import '../../../core/constants/colors.dart';

class OperationsHistory extends StatelessWidget {
  const OperationsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(alignment: AlignmentDirectional.topCenter,
      child: Column(
        children: [ Text(
            "Operations History",
            style: GoogleFonts.inriaSerif(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Divider(color: AppColors.colorButton2),
          SizedBox(height: 10),
          Container(
            width: 400.w,
            decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20.r),
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                stops: [0.6, 0.9],
                colors: [
                  AppColors.colorMyReservation1,
                  AppColors.colorMyReservation2,
                ],
              ),
            ),
            padding: EdgeInsetsDirectional.only(top: 1),
            child: SingleChildScrollView(
              child: DataTable(
                horizontalMargin: 5.w,
          
                columnSpacing: 5.w,
          
                columns: [
                  DataColumn(label: Text('User', style: robotoMedium)),
                  DataColumn(label: Text('Time', style: robotoMedium)),
                  DataColumn(label: Text('Process', style: robotoMedium)),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(SizedBox( width: MediaQuery.of(context).size.width*0.15,child: Text('Admin'))),
                      DataCell(SizedBox(
                        width: MediaQuery.of(context).size.width*0.2,
                        child: Text('15-5-2026 11:00 Pm',textAlign: TextAlign.center,))),
                      DataCell(SizedBox(
                        width: MediaQuery.of(context).size.width*0.22,
                        child: Text('Modify user data',textAlign: TextAlign.center,))),
                     
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(SizedBox( width: MediaQuery.of(context).size.width*0.15,child: Text('Manager'))),
                      DataCell(SizedBox(
                        width: MediaQuery.of(context).size.width*0.2,
                        child: Text('17-5-2026 1:00 Pm',textAlign: TextAlign.center,))),
                      DataCell(SizedBox(
                        width: MediaQuery.of(context).size.width*0.22,
                        child: Text('Confirm reservation',textAlign: TextAlign.center,))),
                     
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(SizedBox( width: MediaQuery.of(context).size.width*0.15,child: Text('Admin'))),
                      DataCell(SizedBox(
                        width: MediaQuery.of(context).size.width*0.2,
                        child: Text('18-5-20265:00 Pm',textAlign: TextAlign.center,))),
                      DataCell(SizedBox(
                        width: MediaQuery.of(context).size.width*0.22,
                        child: Text('Add a section',textAlign: TextAlign.center,))),
                     
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
