import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  IconContent({required this.genderIcon, required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(genderIcon, size: 80.0),
        SizedBox(height: 20.0),
        Text(genderText, style: kLabelTextStyle)
      ],
    );
  }
}
