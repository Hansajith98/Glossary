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
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          Container(

            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img1.jpg',),  //Background Image
                  fit: BoxFit.fill,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.3),
                      BlendMode.dstATop),
                ),
                gradient: LinearGradient(
                  colors: [Colors.red[900], Colors.orange],

                )

            ),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,

                          radius: 80.0,
                          child: Image.asset('assets/logo.png')
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),

                      ),
                      Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold ,fontFamily:'gfont'),)
                    ],
                  ),
                ),

              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35.0),
                      child:Text("Online Glossary \n         For Everyone",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),) ,
                    )

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
