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

  readDepartmentWords(String department) async {
    return await _dbHelp.readDepartmentData(department);
  }
}
