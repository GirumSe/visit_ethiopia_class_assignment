class TouristHotspot {
  final int id;
  final String name;
  final String category;
  final String description;
  final String location;
  final String imageUrl;

  TouristHotspot({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.location,
    required this.imageUrl,
  });
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
      );
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
      );
    });
  }
}
