import 'package:flutter/material.dart';
import 'package:glossary/dbhelp.dart';
import 'package:glossary/repository/repository.dart';
import 'dart:async';
import 'package:glossary/sidebar/home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = TextEditingController();

  StreamController _streamController;
  Stream _stream;

  Timer _debounce;

  DBHelp dbHelp;
  Repository repository;

  _search() async {
    //---------
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _streamController = StreamController();
    _stream = _streamController.stream;

//    dbHelp = new DBHelp();
//    dbHelp.db;
    repository = new Repository();
    repository.database;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          primaryColor: Colors.white,
          fontFamily: 'Cabin'),
      home: SideBarLayout(),
    );
  }
}
