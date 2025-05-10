import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  DbHelper._();
  static final DbHelper getInstance = DbHelper._();
  static const String DATA_TABLE = "data_table";
  static const String DATA_TABLE_SNO = "s_no";
  static const String DATA_TABLE_TITLE = "title";
  static const String DATA_TABLE_DESC = "desc";
  Database? myDb;

  Future<Database> getDb() async {
    if (myDb != null) {
      return myDb!;
    } else {
      myDb = await OpenDb();
      return myDb!;
    }
  }

  Future<Database> OpenDb() async {
    Directory dbDir = await getApplicationDocumentsDirectory();
    String path = join(dbDir.path, "dataPath");

    Database db = await openDatabase(path, onCreate: (db, version) {
      db.execute(
          "create table $DATA_TABLE ($DATA_TABLE_SNO integer primary key autoincrement,$DATA_TABLE_TITLE,$DATA_TABLE_DESC)");
    }, version: 1);
    return db;
  }

  Future<bool> addNote({required String mTitle, required String mDesc}) async {
    var db = await getDb();
    int rowEffected = await db.insert(
      DATA_TABLE,
      {
        DATA_TABLE_TITLE: mTitle,
        DATA_TABLE_DESC: mDesc,
      },
    );
    return rowEffected > 0;
  }

   Future <List<Map<String, dynamic>>> getNote() async {
    var db = await getDb();
    List<Map<String, dynamic>> row_affected = await db.query(DATA_TABLE);
    return row_affected;
  }
}
