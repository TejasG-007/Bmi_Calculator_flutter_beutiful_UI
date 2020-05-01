import 'package:flutter/material.dart';
const double iconsize = 80.0;
class IconFile extends StatelessWidget {
  IconFile({this.icon_,this.label});
  final IconData icon_;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon_,
          size: iconsize,
        ),
        SizedBox(
          height: 10,
        ),
        Text(label
          ,textAlign: TextAlign.center,style: TextStyle(letterSpacing: 2.0,fontSize: 18),)
      ],
    );
  }
}
