import 'package:glossary/repository/repository.dart';
import 'package:glossary/dbhelp.dart';

class WordService{
  Repository _repository;
  DBHelp _dbHelp;

  WordService(){
//    _repository = Repository();
      _dbHelp = DBHelp();
  }

  readWords() async{
//    return await _repository.readData('glossarydata');
      return await _dbHelp.readData();
  }
  readCISWords() async{
    return await _dbHelp.readCISData();
  }
  readPSTWords() async{
    return await _dbHelp.readPSTData();
  }
  readNRWords() async{
    return await _dbHelp.readNRData();
  }
  readSSPEWords() async{
    return await _dbHelp.readSSPEData();
  }
  readFSTWords() async{
    return await _dbHelp.readFSTData();
  }
}