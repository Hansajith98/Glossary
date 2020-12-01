import 'package:glossary/repository/repository.dart';
import 'package:glossary/dbhelp.dart';

class WordService {
  Repository _repository;
  DBHelp _dbHelp;

  WordService() {
//    _repository = Repository();
    _dbHelp = DBHelp();
  }

  readWords() async {
//    return await _repository.readData('glossarydata');
    return await _dbHelp.readData();
  }

  readCISWords() async {
    return await _dbHelp.readDepartmentData('CIS');
  }

  readPSTWords() async {
    return await _dbHelp.readDepartmentData('PST');
  }

  readNRWords() async {
    return await _dbHelp.readDepartmentData('NR');
  }

  readSSPEWords() async {
    return await _dbHelp.readDepartmentData('SSPE');
  }

  readFSTWords() async {
    return await _dbHelp.readDepartmentData('FST');
  }
}
