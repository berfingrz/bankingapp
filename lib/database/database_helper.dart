import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:bankingapp/models/coin.dart';
import 'package:bankingapp/models/histories.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static Database? _db;

  Future<Database> get db async {
    return _db ??= await initDb();
  }

  Future<Database> initDb() async {
    var dbFolder = await getDatabasesPath();
    String path = join(dbFolder, 'app.db');

    // Delete any existing database:
    await deleteDatabase(path);

    // Create the writable database file from the bundled demo database file:
    try {
      await Directory(dirname(path)).create(recursive: true);
    } catch (_) {}
    ByteData data =
        await rootBundle.load(join("assets/database", "bankingapp.db"));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(path).writeAsBytes(bytes, flush: true);

    //open the database
    return await openDatabase(path);
  }

  Future<List<Histories>> getHistories() async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT * FROM Histories");
    return result.map((data) => Histories.fromMap(data)).toList();
  }

  Future<List<Coins>> getCoins() async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT * FROM Coins");
    return result.map((data) => Coins.fromMap(data)).toList();
  }
}
