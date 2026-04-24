import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widget/build_filtter_button.dart';
class FillterScreen extends StatefulWidget {
  const FillterScreen({super.key});

  @override
  State<FillterScreen> createState() => _FillterScreenState();
}

class _FillterScreenState extends State<FillterScreen> { List<DropdownMenuItem<Object>>? selectPriceList = [
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
   String? selectPrice;
  String? selectLocation;
  String? selectRate;
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(right: 220.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFilterButton(
                    "Prices",
                    selectPrice,
                    selectPriceList,
                    (val) {setState(() {
                    });
                      return selectPrice = val.toString();
                      
                    },
                  ),
                  SizedBox(height: 10.h),
                  buildFilterButton(
                    "Location",
                    selectLocation,
                    selectLocationList,
                    (val) {setState(() {
                    });
                      return selectLocation = val.toString();
                    },
                  ),
                  SizedBox(height: 10.h),
                  buildFilterButton(
                    "Ratings",
                    selectRate,
                    selectRateList,
                    (val) {setState(() {
                    });
                      return selectRate = val.toString();
                    },
                  ),
                ],
              ),
            );
  }
}
