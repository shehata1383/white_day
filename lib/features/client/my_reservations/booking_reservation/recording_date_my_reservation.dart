import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart' hide isSameDay;
import 'package:white_day/core/constants/colors.dart';
import 'package:white_day/features/widget/appbar_logo_screen.dart';
import '../../../../core/model/booking_status.dart';
import '../../../../core/model/my_reservation/my_reservation_model.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_text_field.dart';
import 'review_booking_screen.dart';
import 'widget/build_status_cell.dart';
import 'widget/calender_header.dart';

class RecordingDateMyReservation extends StatefulWidget {
  const RecordingDateMyReservation({super.key,required this.reservation});
final MyReservationModel reservation;
  @override
  // ignore: library_private_types_in_public_api
  _RecordingDateMyReservationState createState() =>
      _RecordingDateMyReservationState();
}

class _RecordingDateMyReservationState
    extends State<RecordingDateMyReservation> {
  // التاريخ المختار (كما في صورتك 26 أكتوبر 2026)
  final ValueNotifier<DateTime> _focusedDay2 = ValueNotifier(DateTime.now());
final Map<DateTime, BookingStatus> _dayStatus = {};  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _dayStatus.addAll({
      DateTime(2026, 10, 26): BookingStatus.booked,  // محجوز (برغندي)
      DateTime(2026, 10, 28): BookingStatus.pending, // انتظار (وردي)
    });

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsetsDirectional.symmetric(horizontal: 10.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarLogoScreen(),
               
                ValueListenableBuilder<DateTime>(
                  valueListenable: _focusedDay2,
                  builder: (context, value, _) {
                    return CalendarHeader(
                      focusedDay: value,
                      onTodayButtonTap: () {
                        setState(() => _focusedDay2.value = DateTime.now());
                      },
            
                      onLeftArrowTap: () {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                        );
                      },
                      onRightArrowTap: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                        );
                      },
                      onClearButtonTap: () {},
                      clearButtonVisible: false,
                    );
                  },
                ),
                TableCalendar(
               // --- الجزء السحري: Builders ---
                  calendarBuilders: CalendarBuilders(
                    // 1. الأيام العادية (المتاحة وغير المعرفة في الخريطة)
                    defaultBuilder: (context, day, focusedDay) {
                      // نبحث عن حالة اليوم في الخريطة
                      BookingStatus? status;
                      _dayStatus.forEach((key, value) {
                        if (isSameDay(key, day)) status = value;
                      });

                      if (status == BookingStatus.booked) {
                        return buildStatusCell(day, const Color(0xFF8B2C4F), Colors.white);
                      } else if (status == BookingStatus.pending) {
                        return buildStatusCell(day, const Color(0xFFE0A7C5), Colors.black87);
                      }
                      return null; // سيستخدم التصميم الافتراضي للأيام المتاحة
                    },
                  ),
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay2.value,
                  headerVisible: false,
                 
                 
                  onCalendarCreated: (controller) => _pageController = controller,
            
                  // --- إضافة هذا الجزء لربط السحب بالهيدر ---
                  onPageChanged: (focusedDay) {
                    _focusedDay2.value =
                        focusedDay; // سيقوم هذا بتحديث ValueListenableBuilder تلقائياً
                  },
            
                  // --- باقي التنسيقات الخاصة بك ---
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  calendarStyle: CalendarStyle(
                    outsideDaysVisible: true,
                    outsideTextStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1),
                    ),
                    selectedDecoration: BoxDecoration(
                      color: const Color(0xFF8B2C4F),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    todayDecoration: BoxDecoration(
                      color: const Color(0xFF8B2C4F).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    defaultTextStyle: const TextStyle(color: Colors.black87),
                    weekendTextStyle: const TextStyle(color: Colors.black87),
                  ),
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    weekendStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  rowHeight: 45,
                ),
                Divider(color: AppColors.colorButton2),
                SizedBox(height: 25.h,),
                Text(
                  'Full Name',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextField(
                  colorFill: Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.85,
                  borderRadius: 12.r,
                  hintText: "User",
                  iconSize: 30.w,
                  fontSize: 12.sp,
                ),                SizedBox(height: 15.h,),

                Text(
                  'Email Address',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextField(
                  colorFill: Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.85,
                  borderRadius: 12.r,
                  hintText: "Email",
                  iconSize: 30.w,
                  fontSize: 12.sp,
                ), SizedBox(height: 15.h,),
                Text(
                  'Phone Number',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextField(
                  colorFill: Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.85,
                  borderRadius: 12.r,
                  hintText: "Phone Number",
                  iconSize: 30.w,
                  fontSize: 12.sp,
                ), SizedBox(height: 15.h,),
                Text(
                  'Notes',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextField(
                  colorFill: Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.85,
                  borderRadius: 12.r,
                  hintText: "",
                  fontSize: 12.sp,
                  iconSize: 30.w,
                  maxLines: 4,
                ),SizedBox(height: 30.h,),
                 CustomButton(
                        width: double.infinity,
                        height: 68,
                        onPressed: () {
                         Get.to(()=>ReviewBookingScreen(reservation: widget.reservation,));
                        },
                        buttonText: "Confirm",
                        color: AppColors.colorButton2,
                        fontSize: 34.sp,
                        textColor: Colors.white,
                        isBold: true,
                        radius: 20
                      ),

                      SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

