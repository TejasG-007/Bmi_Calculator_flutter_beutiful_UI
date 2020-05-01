import 'package:flutter/material.dart';
class Midlle extends StatelessWidget {
  Midlle({this.height,this.onclick});
  final int height;
  final Function onclick;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "HEIGHT",
              style:
              TextStyle(fontSize: 18, letterSpacing: 2.5),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.w900),
            ),
            Text("CM")
          ],
        ),
        Slider(
          value: height.toDouble(),
          min: 120.0,
          max: 240.0,
          activeColor: Colors.pink,
          inactiveColor: Colors.blueGrey,
          onChanged: onclick,
        )
      ],
    );
  }
}
