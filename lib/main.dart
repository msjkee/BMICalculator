import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21)
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
          bodyMedium: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.normal
          )
        )
      ),
      home: InputPage(),
    );
  }
}
