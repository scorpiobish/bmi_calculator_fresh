import 'package:bmi_fresh/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
enum Gender { male, female }


class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        title: Center(
          child: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? activeColor
                          : inactiveCardColor,
                      cardChild: Center(
                        child: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(onPress: () {
                      setState(() {selectedGender = Gender.female;
                        
                      });
                    },
                      colour: selectedGender == Gender.female
                          ? activeColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(onPress: () {
                
              },
                colour: inactiveCardColor,
                cardChild: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconContent(label: 'HEIGHT'), Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          '180',
                          style: numberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(onPress: () {
                
              },colour: inactiveCardColor)),
                  // ignore: prefer_const_constructors
                  Expanded(child: ReusableCard(onPress: () {
                
              },colour: inactiveCardColor)),
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
