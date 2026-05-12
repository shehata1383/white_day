import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// تعريف الألوان لتسهيل التخصيص
class ChartColors {
  static const mainLineColor = Colors.black87; // لون الخط الأساسي
  static const secondaryLineColor = Colors.blueAccent; // لون الخط المقطع
  static const gridColor = Colors.grey; // لون الشبكة (إذا أردتها خفيفة)
}

Widget buildAdvancedLineChart() {
  return Container(        color: Colors.white, // خلفية بيضاء للرسم البياني

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. عنوان الرسم البياني (كما في الصورة)
        Padding(
          padding: EdgeInsets.only(left: 2.w, bottom: 5.h),
          child: Text(
            "Booking made with in the last 7 days",
            style: GoogleFonts.inriaSerif(
              fontSize: 12.sp,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        
        // 2. جسم الرسم البياني (داخل Container لحل مشكلة المساحة)
        Container(
          height: 150.h, // تحديد ارتفاع ثابت أو استخدام AspectRatio
          padding: EdgeInsetsDirectional.only(end:5.w),
          child: AspectRatio(
            aspectRatio: 1.7, // نسبة العرض إلى الارتفاع لضبط الحجم
            child: LineChart(
              LineChartData(
                // إعدادات اللمس والتفاعل
               lineTouchData: LineTouchData(
    enabled: true,
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      // التعديل هنا: استخدام getTooltipColor بدلاً من tooltipBgColor
      getTooltipColor: (LineBarSpot touchedSpot) => Colors.black.withOpacity(0.8),
      getTooltipItems: (List<LineBarSpot> touchedSpots) {
        return touchedSpots.map((LineBarSpot touchedSpot) {
          return LineTooltipItem(
            '${touchedSpot.y.toInt()}',
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          );
        }).toList();
      },
    ),
    ),
                
                // إعدادات الشبكة الخلفية (إخفاؤها تماماً للحصول على مظهر نظيف)
                gridData: const FlGridData(show: false),
                
                // إعدادات البوردر (البوردر السفلي فقط لعزل أيام الأسبوع)
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    bottom: BorderSide(color: Colors.grey, width: 0.5),
                    left: BorderSide(color: Colors.transparent),
                    right: BorderSide(color: Colors.transparent),
                    top: BorderSide(color: Colors.transparent),
                  ),
                ),
                
                // إعدادات العناوين (الأيام في الأسفل، والأرقام في اليسار)
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitleWidgets, // دالة مخصصة للأيام
                      reservedSize: 20.h,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitleWidgets, // دالة مخصصة للأرقام (k)
                      reservedSize: 30.w,
                    ),
                  ),
                  // إخفاء العناوين العلوية واليمنى
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                
                // تعريف النقاط القصوى على المحاور
                minX: 0,
                maxX: 6, // 7 أيام (0 to 6)
                minY: 0,
                maxY: 30000, // الحد الأقصى للحجوزات (كما في الصورة)
                
                // تعريف خطوط البيانات (الدالة الأساسية)
                lineBarsData: [
                  // أ. الخط الأساسي الأسود (مع التظليل)
                  LineChartBarData(
                    spots: mainLineSpots, // نقاط البيانات
                    isCurved: true, // جعل الخط منحنياً
                    color: ChartColors.mainLineColor,
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false), // إخفاء نقاط القياس
                    belowBarData: BarAreaData(
                      show: true,
                      // تأثير تدرج التظليل (من رمادي خفيف إلى شفاف)
                      gradient: LinearGradient(
                        colors: [
                          Colors.grey.withOpacity(0.3),
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  
                  // ب. الخط الأزرق المقطع (Dashed Line)
                  LineChartBarData(
                    spots: secondaryLineSpots, // نقاط البيانات
                    isCurved: true,
                    color: ChartColors.secondaryLineColor.withOpacity(0.5),
                    barWidth: 1.5,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    dashArray: [5, 5], // هذا السطر يجعل الخط مقطعاً [طول الخط، طول الفراغ]
                    belowBarData: BarAreaData(show: false), // لا تظليل تحت الخط المقطع
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// أ. دالة تنسيق الأيام في الأسفل (Mon, Tue, Wed, ...)
Widget bottomTitleWidgets(double value, TitleMeta meta) {
  var style = GoogleFonts.inriaSerif(
    color: Colors.grey[700],
    fontSize: 7.sp,
  );
  Widget text;
  switch (value.toInt()) {
    case 0: text = Text('Sat', style: style); break;
    case 1: text = Text('Sun', style: style); break;
    case 2: text = Text('Mon', style: style); break;
    case 3: text = Text('Tue', style: style); break;
    case 4: text = Text('Wed', style: style); break;
    case 5: text = Text('Thu', style: style); break;
    case 6: text = Text('Fri', style: style); break;
    default: text = const Text(''); break;
  }
  return SideTitleWidget(
    meta: meta, // تمرير كائن meta كاملاً
    space: 8.h,
    child: text, // النص الذي حددناه في الـ switch
  );
}

// ب. دالة تنسيق أرقام المحور الأيسر (10k, 20k, 30k)
Widget leftTitleWidgets(double value, TitleMeta meta) {
  var style = GoogleFonts.inriaSerif(
    color: Colors.grey[700],
    fontSize: 14.sp,
  );
  String text;
  if (value == 10000) {
    text = '10K';
  } else if (value == 20000) {
    text = '20K';
  } else if (value == 30000) {
    text = '30K';
  } else if (value == 0) {
    text = '0';
  } else {
    return Container(); // إخفاء الأرقام الأخرى
  }
  return Text(text, style: style, textAlign: TextAlign.center);
}

// ج. نقاط البيانات (مثال يحاكي الشكل في صورتك)
final List<FlSpot> mainLineSpots = [
  FlSpot(0, 12000), // Sat
  FlSpot(1, 14000), // Sun
  FlSpot(1.5, 6000), // Drop mid-Sun
  FlSpot(2, 14000), // Mon
  FlSpot(3, 24000), // Tue
  FlSpot(4, 28000), // Wed
  FlSpot(5, 20000), // Thu
  FlSpot(6, 23000), // Fri
];

final List<FlSpot> secondaryLineSpots = [
  FlSpot(0, 6000), // Sat
  FlSpot(1, 13000), // Sun
  FlSpot(2, 21000), // Mon
  FlSpot(3, 7000),  // Tue (Drop)
  FlSpot(4, 15000), // Wed
  FlSpot(5, 23000), // Thu
  FlSpot(6, 32000), // Fri
];