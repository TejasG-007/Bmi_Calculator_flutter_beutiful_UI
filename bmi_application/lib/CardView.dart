import 'package:bmi_application/Bottomwidgets.dart';
import 'package:bmi_application/IconFile.dart';
import 'package:bmi_application/bmi_cal_brain.dart';
import 'package:bmi_application/stlesswdgets/bottom2rows.dart';
import 'package:bmi_application/stlesswdgets/middlerow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultpage.dart';
import 'ReuseCard.dart';
import 'MaterialCons.dart';

enum Gender { male, female }

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  Gender currentGender;
  int height = 180;
  int weight = 60;
  int age = 21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 15, letterSpacing: 3.5),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: ReuseCard(
                    onClick: () {
                      setState(() {
                        currentGender = Gender.male;
                      });
                    },
                    cardchild: IconFile(
                      icon_: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                    colour: currentGender == Gender.male
                        ? activecardcolor
                        : cardcolor,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ReuseCard(
                    onClick: () {
                      setState(() {
                        currentGender = Gender.female;
                      });
                    },
                    cardchild: IconFile(
                      icon_: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    colour: currentGender == Gender.female
                        ? activecardcolor
                        : cardcolor,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReuseCard(
                    cardchild: Midlle(onclick: (double changeinheight) {
                      setState(() {
                        height = changeinheight.round();
                      });
                    },height: height,),
                    colour: cardcolor,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ReuseCard(
                    cardchild:Bottom2R(label: "WEIGHT",asper: weight,onclick1:  () {
                      setState(() {
                        weight--;
                      });
                    },onclick2:  () {
                      setState(() {
                        weight++;
                      });
                    },) ,
                    colour: cardcolor,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ReuseCard(
                    cardchild:Bottom2R(label: "AGE",asper: age,onclick1:  () {
                      setState(() {
                        age--;
                      });
                    },onclick2:  () {
                      setState(() {
                        age++;
                      });
                    },) ,
                    colour: cardcolor,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[ Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: GestureDetector(
                      onTap: (){

                          Calculator var_ = Calculator(height: height,weight: weight);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(bmi: var_.BmiCal(),int_: var_.getInt(),status: var_.getresult(),)));


                      },
                      child: Container(
                        height: 40,
                        width: 10,
                        color: Colors.pink,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("CALCULATE",textAlign:TextAlign.center,style: TextStyle(letterSpacing: 2.5,fontSize: 24,fontWeight: FontWeight.bold),),

                          ],
                        )   ),
                    ),
                  ),
                ],
              ),]
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children:<Widget>[ Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Container(
//                      height: 25,
                        width: double.infinity,
                        color: backgroundcolor,
                        child: Text("developed by TejasG007",textAlign:TextAlign.center,style: TextStyle(
                            letterSpacing: 2.5,fontSize: 20
                        ),)
                    ),
                  )
                ],
              ),]
            )
          ],
        ),
      ),
    );
  }
}
