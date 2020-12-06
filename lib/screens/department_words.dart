import 'package:flutter/material.dart';
import 'package:glossary/services/WordService.dart';
import 'package:glossary/models/word.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class DepartmentWords extends StatefulWidget with NavigationStates {
  final department;
  const DepartmentWords({Key key, this.department}) : super(key: key);
  @override
  _DepartmentWordsState createState() =>
      _DepartmentWordsState(department: this.department);
}

class _DepartmentWordsState extends State<DepartmentWords> {
  String department;
  _DepartmentWordsState({this.department});

  var _wordservices = WordService();

  List<Word> _wordlist = List<Word>();

  @override
  void initState() {
    super.initState();
    getWords(department);
  }

  getWords(String department) async {
    _wordlist = List<Word>();
    var words = await _wordservices.readDepartmentWords(department);
    words.forEach((word) {
      setState(() {
        var wordModel = Word();
        wordModel.englishWord = word['englishword'];
        wordModel.sinhalaWord = word['sinhalaword'];
        _wordlist.add(wordModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(department,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[500])),
          Expanded(
            child: ListView.builder(
              itemCount: _wordlist.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_wordlist[index].englishWord),
                    subtitle: Text(_wordlist[index].sinhalaWord),
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
