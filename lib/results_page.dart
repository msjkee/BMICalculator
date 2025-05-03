import 'package:bmi_calculator/constants.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Expanded(
            flex: 1,
            child: Container(
              child: Text('Your Result', style: kResultLabelTextStyle)
            )
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Text(
                    'OVERWEIGHT',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    '26.7',
                    style: kNumberTextStyle
                  ),
                  Text(
                    'You have a higher than normal body weight. Try to exercise more',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 25.0
                    )
                  ),
                ]
              ),
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: kBottomContainerColor,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonTextStyle
                ),
              )
            )
          )
        ]
      )
    );
  }
}
