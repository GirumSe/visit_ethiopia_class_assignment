import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:visit_ethiopia/models/hotspot_model.dart';

class DatabaseProvider {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initializeDatabase();
    return _database!;
  }

  static Future<Database> initializeDatabase() async {
    final String databasePath = await getDatabasesPath();
    final String path = join(databasePath, 'tourist_hotspots.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE hotspots(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            category TEXT,
            description TEXT,
            location TEXT,
            imageUrl TEXT, 
            rate TEXT,
            comments TEXT
          )
        ''');
      },
    );
  }
}

class HotspotDao {
  static const String tableName = 'hotspots';

  static Future<List<TouristHotspot>> getAllHotspots() async {
    final db = await DatabaseProvider.database;
    final List<Map<String, dynamic>> maps = await db.query(tableName);

    return List.generate(maps.length, (index) {
      return TouristHotspot(
          id: maps[index]['id'],
          name: maps[index]['name'],
          category: maps[index]['category'],
          description: maps[index]['description'],
          location: maps[index]['location'],
          imageUrl: maps[index]['imageUrl'],
          rate: maps[index]['rate'],
          comments: maps[index]['comments']);
    });
  }

  static Future<List<TouristHotspot>> getHotspotsByCategory(
      String category) async {
    final db = await DatabaseProvider.database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: 'category = ?',
      whereArgs: [category],
    );

    return List.generate(maps.length, (index) {
      return TouristHotspot(
        id: maps[index]['id'],
        name: maps[index]['name'],
        category: maps[index]['category'],
        description: maps[index]['description'],
        location: maps[index]['location'],
        imageUrl: maps[index]['imageUrl'],
        rate: maps[index]['rate'],
        comments: maps[index]['comments'],
      );
    });
  }

  static Future<List<TouristHotspot>> searchHotspotsByName(String name) async {
    final db = await DatabaseProvider.database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: 'name LIKE ?',
      whereArgs: ['%$name%'],
    );

    return List.generate(maps.length, (index) {
      return TouristHotspot(
          id: maps[index]['id'],
          name: maps[index]['name'],
          category: maps[index]['category'],
          description: maps[index]['description'],
          location: maps[index]['location'],
          imageUrl: maps[index]['imageUrl'],
          rate: maps[index]['rate'],
          comments: maps[index]['comments']);
    });
  }
}
