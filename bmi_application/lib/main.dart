import 'package:bmi_application/CardView.dart';
import 'package:flutter/material.dart';
import 'CardView.dart';
import 'MaterialCons.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CardView(),
      theme: ThemeData.dark().copyWith(
          primaryColor: backgroundcolor,
          scaffoldBackgroundColor: backgroundcolor),
    );
  }
}
