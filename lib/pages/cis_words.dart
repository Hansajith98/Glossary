import 'package:flutter/material.dart';
import 'package:glossary/services/WordService.dart';
import 'package:glossary/models/word.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class CIS extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return new CISWords();
  }
}

class CISWords extends StatefulWidget {
  @override
  _CISWordsState createState() => _CISWordsState();
}

class _CISWordsState extends State<CISWords> {
  var _word = Word();
  var _wordservices = WordService();

  List<Word> _wordlist = List<Word>();

  @override
  void initState() {
    super.initState();
    getCISWord();
  }

  getCISWord() async {
    _wordlist = List<Word>();
    var words = await _wordservices.readDepartmentWords('CIS');
    words.forEach((word) {
      setState(() {
        var wordModel = Word();
//        print(word['englishword']);
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
          Text('Computing & Information Systems',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[500])),
          Expanded(
            child: FutureBuilder(
              future: _wordservices.readWords(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
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
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
