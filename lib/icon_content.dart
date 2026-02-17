import 'package:flutter/material.dart';
// ignore: unused_import
import 'main.dart';
// ignore: unused_import
import 'input_page.dart';
// import 'reusable_card.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  IconContent({this.icon, required this.label});

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80, color: Colors.white),
        const SizedBox(height: 15),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}