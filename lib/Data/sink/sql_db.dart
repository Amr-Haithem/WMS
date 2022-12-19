import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLDB {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('sms.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, fileName);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _sqlStatementsExecuter(Database db, List<String> statements) async {
    for (var statement in statements) {
      await db.execute(statement);
    }
  }

  Future _intializeConstants(Database db) async {
    await _sqlStatementsExecuter(db, [
//       '''
// INSERT INTO Student(name,student_id,user_name,password) VALUES
//  ('amr haithem',0,'amr','amor'),
//  ('omar banna',1,'omar','amor');
// ''',
//       '''
//  INSERT INTO professor(name,prof_id,user_name,password) VALUES
//  ('shehab',0,'shehab','sheba'),
//  ('Hekal',1,'hekal','hekal');''',
//       '''
//  INSERT INTO Course(name,content,course_id,prof_id) VALUES
//  ('vibration and waves','no content yet',0,0),
//  ('Logic design','no content yet',1,0),
//  ('Signals and systems','no content yet',2,0),
//  ('programming','no content yet',3,1),
//  ('Advanced programming','no content yet',4,1),
//  ('Embedded systems','no content yet',5,1),
//  ('Literature and love','no content yet',6,0);
// '''
    ]);
  }

  Future<void> deleteDatabase(String databaseName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, databaseName);
    await databaseFactory.deleteDatabase(path);
  }

  Future _createDB(Database db, int version) async {
    await _sqlStatementsExecuter(db, [
      '''CREATE TABLE USER
(
  userId INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  userFullName VARCHAR(255) NOT NULL,
  phoneNumber VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (user_id)
);'''
    ]);
    _intializeConstants(db);
  }

  Future deleteATable(Database db, String tableName) async {
    await db.execute("DROP TABLE IF EXISTS $tableName");
  }

  Future close() async {
    final db = await database;
    db.close();
  }
}