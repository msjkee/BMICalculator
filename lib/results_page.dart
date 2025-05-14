import 'package:bmi_calculator/constants.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

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
            child: Container(
              child: Text('Your Result', style: kTitleTextStyle),
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
            )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'OVERWEIGHT',
                    style: kResultTextStyle
                  ),
                  Text(
                    '26.7',
                    style: kBMITextStyle
                  ),
                  Text(
                    'You have a higher than normal body weight. Try to exercise more',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ]
              ),
            )
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'
          )
        ]
      )
    );
  }
}
