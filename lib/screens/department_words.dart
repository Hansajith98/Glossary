import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glossary/services/WordService.dart';
import 'package:glossary/models/word.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class DepartmentWords extends StatefulWidget with NavigationStates {
  final department;
  final name;
  const DepartmentWords({Key key, this.department, this.name}) : super(key: key);
  @override
  _DepartmentWordsState createState() =>
      _DepartmentWordsState(department: this.department, name: this.name);
}

class _DepartmentWordsState extends State<DepartmentWords> {
  String department;
  String name;

  _DepartmentWordsState({this.department, this.name});

  var _wordservices = WordService();

  List<Word> _wordlist = List<Word>();

  @override
  void initState() {
    super.initState();
    getWords(department, name);
  }

  getWords(String department, String name) async {
    _wordlist = List<Word>();
    var words = await _wordservices.readDepartmentWords(department);
    words.forEach((word) {
      setState(() {
        var wordModel = Word();
        wordModel.englishWord = word['englishword'];
        wordModel.sinhalaWord = word['sinhalaword'];
        wordModel.otherWord = word['otherword'];
        _wordlist.add(wordModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[500]),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _wordlist.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_wordlist[index].englishWord),
                    subtitle: Column(
                      children: <Widget>[
                        Text(_wordlist[index].sinhalaWord),
                        Text(_wordlist[index].otherWord != null?_wordlist[index].otherWord:"")
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                );
              },
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
