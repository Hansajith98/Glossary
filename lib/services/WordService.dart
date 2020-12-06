import 'package:glossary/dbhelp.dart';

class WordService {
  DBHelp _dbHelp;

  WordService() {
//    _repository = Repository();
    _dbHelp = DBHelp();
  }

  readWords() async {
//    return await _repository.readData('glossarydata');
    return await _dbHelp.readData();
  }

  searchWords(word) async {
//    return await _repository.readData('glossarydata');
    return await _dbHelp.searchData(word);
  }

  suggestWords(word) async {
//    return await _repository.readData('glossarydata');
    return await _dbHelp.suggestData(word);
  }

  readDepartmentWords(String department) async {
    return await _dbHelp.readDepartmentData(department);
  }
}
