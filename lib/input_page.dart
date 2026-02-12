import 'package:bmi_fresh/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80;
const inactiveCardColor = Color(0xFF111328);
const Color activeColor = Color.fromARGB(255, 35, 37, 103);

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor; 
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    setState(() {
      if (gender == 1) {
        if (maleCardColor == inactiveCardColor) {
          maleCardColor = activeColor;
        } else {
          maleCardColor = inactiveCardColor;
        }
      } else if (gender != 1) {
        if (femaleCardColor == inactiveCardColor) {
          femaleCardColor = activeColor;
        } else {
          femaleCardColor = inactiveCardColor;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateColor(1);
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: Center(
                          child: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: "MALE",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector( onTap: () {
                        updateColor(2);
                    },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeColor,
                cardChild: IconContent(label: 'HEIGHT'),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: activeColor)),
                  // ignore: prefer_const_constructors
                  Expanded(child: ReusableCard(colour: activeColor)),
                ],
              ),
            ),
            Container(
              color: const Color(0xffEB1555),
              width: bottomContainerWidth,
              height: 80,
              margin: const EdgeInsets.only(top: 10),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
