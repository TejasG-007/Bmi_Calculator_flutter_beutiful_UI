import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'MaterialCons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Result extends StatelessWidget {
  Result({this.bmi, this.int_, this.status});
  final String status;
  final String int_;
  final String bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(fontSize: 15, letterSpacing: 3.5),
          ),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Your Result",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 450,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cardcolor,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    status.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    bmi,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 90),
                  ),
                  Text(int_,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.pink,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "RE-CALCULATE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 2.5,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                          FontAwesomeIcons.facebook
                      ),
                      onPressed: ()async{
                        const fb = 'https://www.facebook.com/profile.php?id=100005646436267';
                        if(await canLaunch(fb)){
                          await launch(fb);
                        }
                        else{
                          throw 'could not launch $fb';
                        }
                      },
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      onPressed: ()async{
                        const insta = 'https://www.instagram.com/tejasg007/';
                        if(await canLaunch(insta)){
                          await launch(insta);
                        }
                        else{
                          throw 'could not launch $insta';
                        }
                      },
                      icon: Icon(
                          FontAwesomeIcons.instagram
                      ),
                    ),SizedBox(width: 30,),
                    IconButton(

                      icon: Icon(
                          FontAwesomeIcons.linkedin
                      ),
                      onPressed: ()async{
                        const link = 'https://www.linkedin.com/in/tejas-gathekar-661a22162';
                        if(await canLaunch(link)){
                          await launch(link);
                        }
                        else{
                          throw 'could not launch $link';
                        }
                      },
                    ),SizedBox(width: 30,),
                    IconButton(
                      icon: Icon(
                          FontAwesomeIcons.github
                      ),
                      onPressed: ()async{
                        const git = 'https://github.com/TejasG-007';
                        if(await canLaunch(git)){
                          await launch(git);
                        }
                        else{
                          throw 'could not launch $git';
                        }
                      },
                    ),],),
              ],
            )
          ],
        )));
  }
}
