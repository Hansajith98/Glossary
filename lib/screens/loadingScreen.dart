import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:glossary/screens/home.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
            Image(image: AssetImage('assets/logo.png')),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 150,
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff520103),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Main Students Union ',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Sabragamuwa University of Sri Lanka',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
          ],
        ));
  }
}
