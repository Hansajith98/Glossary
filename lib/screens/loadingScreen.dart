import 'dart:async';
//import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:glossary/screens/home.dart';

class LoadingScreen extends StatelessWidget {
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
        ));
  }
}
