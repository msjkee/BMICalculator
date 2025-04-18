import 'package:flutter/material.dart';

const genderTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98)
);

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
        Text(genderText, style: genderTextStyle)
      ],
    );
  }
}
