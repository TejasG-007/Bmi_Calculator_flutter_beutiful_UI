import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  ReuseCard({this.cardchild,this.colour,this.onClick});
  final Widget cardchild;
  final Color colour;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(10),
        height: 180,
        width: 10,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
