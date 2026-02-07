import 'package:bmi_fresh/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget{
  const InputPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;

  const ReusableCard({
    super.key,
    required this.colour,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}

class _InputPageState extends State<InputPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                  cardChild: Center(
                    child: const Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80, color: Colors.white,
                        ),
                        Text(
                          'MALE',
                     style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),  )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: blackColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                )),
                // ignore: prefer_const_constructors
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                )),
              ],
            ),
          ),
          Container(
            color: const Color(0xffEB1555),
            width: bottomContainerWidth,
            height: 80,
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      ),
      ),floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

    