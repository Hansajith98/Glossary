import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    displaySplash();
  }

  displaySplash(){
    Timer(Duration(seconds: 4), () async{
      Navigator.push(context,
          PageRouteBuilder(
              transitionDuration: Duration(seconds: 2),
              transitionsBuilder: (context,animation , animationTime , child){
                animation =CurvedAnimation(parent: animation , curve: Curves.elasticOut);
                return ScaleTransition(
                  scale:animation,
                  child: child,
                  alignment: Alignment.center,

                );
              },
              pageBuilder: (context , animation , animationTime){
                return Home();
              }
          ));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xF0F0F0F0),
        ),
        padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Image(image: AssetImage('assets/logo.png'),
                  height: 180,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Main Students' Union ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    color: Colors.black54),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Sabragamuwa University of \nSri Lanka',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    color: Colors.black54),
              ),
            ),
            SizedBox(height: 10,),
          ],
        )
    );
  }
}