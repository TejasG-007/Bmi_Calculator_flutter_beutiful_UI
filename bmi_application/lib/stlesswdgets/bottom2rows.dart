import 'package:flutter/material.dart';
import 'package:bmi_application/MaterialCons.dart';
class Bottom2R extends StatelessWidget {
  Bottom2R({this.label,this.asper,this.onclick1,this.onclick2});
  final String label;
  final int asper ;
  final Function onclick1;
  final Function onclick2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              label,
              style:
              TextStyle(fontSize: 18, letterSpacing: 2.5),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              asper.toString(),
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.w900),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: FloatingActionButton(
                  heroTag: null,
                  backgroundColor: activecardcolor,
                  onPressed:onclick1,
                  child: Icon(Icons.remove),
                )),
            Expanded(
                child: FloatingActionButton(
                  heroTag: null,
                  backgroundColor: activecardcolor,
                  onPressed: onclick2,
                  child: Icon(Icons.add),
                )),
          ],
        )
      ],
    );
  }
}
