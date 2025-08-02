import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfliteDb {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initalDb();
      return _db;
    } else {
      return _db;
    }
  }

  initalDb() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, 'expenzo.db');
    Database mydb = await openDatabase(path, version: 2, onCreate: _onCreate);
    return mydb;
  }

  _onCreate(Database db, int version) async {
    Batch batch = db.batch();
    batch.execute('''
    CREATE TABLE "transactions" (
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
      "amount" REAL NOT NULL,
      "description" TEXT,
      "date" TEXT DEFAULT (datetime('now')),
      "categoryName" TEXT NOT NULL,
      "categoryImage" TEXT
    )
  ''');
    await batch.commit();
  }

  readData(String sql) async {
    Database? myDb = await db;
    List<Map> response = await myDb!.rawQuery(sql);
    return response;
  }

  insertData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawInsert(sql);
    return response;
  }

  updateData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawUpdate(sql);
    return response;
  }

  deleteData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawDelete(sql);
    return response;
  }
}
