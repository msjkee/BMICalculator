import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female;
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        color: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                        cardChild: IconContent(
                          genderIcon: FontAwesomeIcons.mars,
                          genderText: 'MALE',
                        )
                    )
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                      cardChild: IconContent(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: 'FEMALE',
                      )
                    )
                  )
                ],
              )
          ),
          Expanded(
            child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget> [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 130.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }
                      ),
                    )
                  ],
                ),
            )
          ),
          Expanded(
            child: Row(
              children: <Widget> [
                Expanded(
                  child: ReusableCard(color: kActiveCardColor)
                ),
                Expanded(
                  child: ReusableCard(color: kActiveCardColor)
                )
              ],
            )
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
