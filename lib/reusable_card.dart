import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:bmi_fresh/main.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback onPress;

  const ReusableCard({super.key, required this.colour, this.cardChild, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
