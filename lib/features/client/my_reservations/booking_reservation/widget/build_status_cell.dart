import 'package:flutter/material.dart';

Widget buildStatusCell(DateTime day, Color bgColor, Color textColor) {
  return Container(
    margin: const EdgeInsets.all(4.0),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      '${day.day}',
      style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
    ),
  );
}