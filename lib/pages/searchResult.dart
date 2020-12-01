import 'package:flutter/material.dart';
import 'package:glossary/models/word.dart';
import 'package:glossary/services/WordService.dart';

class Seacrh extends StatefulWidget {
  @override
  _SeacrhState createState() => _SeacrhState();
}

class _SeacrhState extends State<Seacrh> {
  var _word = Word();
  var _words;
  var _wordservices = WordService();

  List<Word> _wordlist = List<Word>();

  @override
  void initState() {
    super.initState();
    getWord();
  }

  getWord() async {
    _wordlist = List<Word>();
    _words = await _wordservices.readWords();
    _words.forEach((_word) {
      setState(() {
        var wordModel = Word();
//        print(word['englishword']);
        wordModel.englishWord = _word['englishword'];
        wordModel.sinhalaWord = _word['sinhalaword'];
        _wordlist.add(wordModel);
      });
    });
  }

  void searchWord(String keyword) {
    _words.where((_word) => _word['englishword'].toLowerCase() == keyword);
    print(_words);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
