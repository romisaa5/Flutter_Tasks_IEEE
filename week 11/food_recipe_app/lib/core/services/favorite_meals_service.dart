import 'package:food_recipe_app/features/favorites/data/models/favorite_recipe.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

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
    String path = join(dbPath, 'favorites.db');
    Database mydb = await openDatabase(path, version: 2, onCreate: _onCreate);
    return mydb;
  }

  _onCreate(Database db, int version) async {
    Batch batch = db.batch();
    batch.execute('''
    CREATE TABLE favorites(
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      imageUrl TEXT NOT NULL
    )
  ''');
    await batch.commit();
  }

  Future<int> insertFavorite(FavoriteRecipe meal) async {
    Database? myDb = await db;
    return await myDb!.insert('favorites', {
      'id': meal.id,
      'title': meal.title,
      'imageUrl': meal.imageUrl,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int> deleteFavorite(String id) async {
    Database? myDb = await db;
    return await myDb!.delete('favorites', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<FavoriteRecipe>> getAllFavoritesMeals() async {
    Database? myDb = await db;
    List<Map<String, dynamic>> data = await myDb!.query('favorites');
    return data
        .map(
          (e) => FavoriteRecipe(
            id: e['id'].toString(),
            title: e['title'],
            imageUrl: e['imageUrl'],
          ),
        )
        .toList();
  }

  Future<bool> isFavorite(String id) async {
    Database? myDb = await db;
    List<Map<String, dynamic>> res = await myDb!.query(
      'favorites',
      where: 'id = ?',
      whereArgs: [id],
    );
    return res.isNotEmpty;
  }
}
