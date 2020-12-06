import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DBHelp {
  static Database dbExist;

  Future<Database> get db async {
    if (dbExist != null) {
      print('DB Status' + 'DB Already Exist');
      return dbExist;
    } else {
      print('DB Status' + 'DB Not Exist');
      dbExist = await initDB();
      return dbExist;
    }
  }

  Future initDB() async {
    final dbpath = await getDatabasesPath();
    final path = join(dbpath, 'glossary.db');

    final exist = await databaseExists(path);
    print(exist);

    if (!exist) {
      print('DB Status' + 'Creating new copy from assets');
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      ByteData data = await rootBundle.load(join('assets', 'glossary.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print('DB Status' + 'Opening Database');
    }
    return await openDatabase(path);
  }

  insertData(table, data) async {
    var connection = await db;
    return await connection.insert(table, data);
  }

  readData() async {
    var connection = await db;
    print('Data Read');
    return await connection.query('glossarydata');
  }

  searchData(String words) async {
    var connection = await db;
    var word = await connection.query('glossarydata',
        columns: ['englishword', 'sinhalaword'],
        where: "englishword = ?",
        whereArgs: [words]);
    return word;
  }

  suggestData(String words) async {
    var connection = await db;
    var word = await connection.query('glossarydata',
        columns: ['englishword', 'sinhalaword'],
        where: "englishword like ?",
        whereArgs: [words + '%']);
    return word;
  }

  readDepartmentData(String department) async {
    var connection = await db;
    print('Data Read from $department');
    return await connection.query('glossarydata',
        where: 'department = ?', whereArgs: [department]);
  }
}
