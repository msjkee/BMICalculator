import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  //1 = Male, 2 = Female
  void updateColor(int gender) {
    //Male option
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }

    //Female option
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: ReusableCard(
                          color: maleCardColor,
                          cardChild: IconContent(
                            genderIcon: FontAwesomeIcons.mars,
                            genderText: 'MALE',
                          )
                      ),
                    )
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ReusableCard(
                        color: femaleCardColor,
                        cardChild: IconContent(
                          genderIcon: FontAwesomeIcons.venus,
                          genderText: 'FEMALE',
                        )
                      ),
                    )
                  )
                ],
              )
          ),
          Expanded(
            child: ReusableCard(color: activeCardColor)
          ),
          Expanded(
            child: Row(
              children: <Widget> [
                Expanded(
                  child: ReusableCard(color: activeCardColor)
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor)
                )
              ],
            )
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
