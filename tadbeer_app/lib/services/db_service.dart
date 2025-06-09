import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBService {
  static Database? _db;

  static Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  static Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'tadbeer.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE users(id TEXT PRIMARY KEY, name TEXT, email TEXT, role TEXT, avatarUrl TEXT)
        ''');
        await db.execute('''
          CREATE TABLE teams(id TEXT PRIMARY KEY, name TEXT, ownerId TEXT, createdAt TEXT)
        ''');
        await db.execute('''
          CREATE TABLE expenses(id TEXT PRIMARY KEY, userId TEXT, amount REAL, category TEXT, date TEXT, cardId TEXT)
        ''');
        await db.execute('''
          CREATE TABLE debts(id TEXT PRIMARY KEY, userId TEXT, description TEXT, totalAmount REAL, paidAmount REAL, dueDate TEXT, status TEXT)
        ''');
        await db.execute('''
          CREATE TABLE goals(id TEXT PRIMARY KEY, userId TEXT, title TEXT, type TEXT, targetAmount REAL, currentAmount REAL, startDate TEXT, endDate TEXT, status TEXT)
        ''');
      },
    );
  }

  // مثال: إضافة مستخدم
  static Future<void> insertUser(Map<String, dynamic> user) async {
    final db = await database;
    await db.insert('users', user, conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
