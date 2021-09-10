/*import 'dart:async';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:bankingapp/models/transaction.dart';

class DbHelper {
  static Database? _db;

  Future<Database> get db async {
    return _db ??= await initDb();
  }

  initDb() async {
    var dbFolder = await getDatabasesPath();
    String path = join(dbFolder, 'app.db');

    return await openDatabase(path);
  }

  Future<List<TransactionsTb>> getTransaction(transactionid) async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT * FROM Transactions");
    return result.map((data) => TransactionsTb.fromMap(data)).toList();
  }
}*/
