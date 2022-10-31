import 'package:sqflite/sqflite.dart';
import 'package:storage_management_system/data/sink/sql_db.dart';

class UserSink {
  final SQLDB _sqldb = SQLDB();

  Future<List<Map<String, Object?>>> getAUser(
      String email, String password) async {
    Database db = await _sqldb.database;
    return await db.query('USER',
        where: '''email= '$email' AND password = '$password' ''');
  }

  Future<List<Map<String, Object?>>> setAUser(String email, String userFullName,
      String phoneNumber, String address, String password) async {
    Database db = await _sqldb.database;
    return await db.rawQuery('''
INSERT INTO Student(userId,email,userFullName,phoneNumber,address,password) VALUES
  (,$email,$userFullName,$phoneNumber,$address,$password);
''');
  }
}
