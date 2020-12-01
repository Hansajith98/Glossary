import 'package:flutter/material.dart';
import 'package:glossary/services/WordService.dart';
import 'package:glossary/models/word.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class SSPE extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return new SSPEWords();
  }
}

class SSPEWords extends StatefulWidget {
  @override
  _SSPEWordsState createState() => _SSPEWordsState();
}

class _SSPEWordsState extends State<SSPEWords> {
  var _word = Word();
  var _wordservices = WordService();

  List<Word> _wordlist = List<Word>();

  @override
  void initState() {
    super.initState();
    getSSPEWord();
  }

  getSSPEWord() async {
    _wordlist = List<Word>();
    var words = await _wordservices.readDepartmentWords('SSPE');
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
          Text('Sport Science & Physical Education',
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
