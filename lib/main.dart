import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';

const double bottomContainerWidth = double.infinity;
const Color blackColor = Color(0xFF1D1E33);

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      home: const InputPage(),);
  }
}

