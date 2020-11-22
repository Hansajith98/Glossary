import 'package:glossary/repository/database_connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository{

  DatabaseConnection _databaseConnection;

  Repository(){
    //initialize database connection
    _databaseConnection = DatabaseConnection();
  }

  static Database _database;

  Future<Database> get database async{
    if(_database!=null) {
      print('DB Status : '+'DB Already Exist');
      return database;
    }else{
      print('DB Status : '+'DB Not Exist');
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

  readData(table) async {
    var connection = await database;
    print('Data Read');
    return await connection.query(table);
  }

}