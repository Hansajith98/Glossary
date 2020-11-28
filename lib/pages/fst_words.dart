import 'package:flutter/material.dart';
import 'package:glossary/services/WordService.dart';
import 'package:glossary/models/word.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class FST extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return new FSTWords();
  }
}
class FSTWords extends StatefulWidget {
  @override
  _FSTWordsState createState() => _FSTWordsState();
}

class _FSTWordsState extends State<FSTWords> {

  var _word = Word();
  var _wordservices = WordService();

  List<Word> _wordlist = List<Word>();

  @override
  void initState(){
    super.initState();
    getFSTWord();
  }

  getFSTWord() async {
    _wordlist = List<Word>();
    var words = await _wordservices.readFSTWords();
    words.forEach((word){
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
          Text('Food Science & Techology'),
          Expanded(
            child: FutureBuilder(
            future: _wordservices.readWords(),
            builder: (context, AsyncSnapshot snapshot){
            if(!snapshot.hasData){
              return Center(child: CircularProgressIndicator(),);
            }else{
              return ListView.builder(itemCount:_wordlist.length, itemBuilder: (context, index){
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
