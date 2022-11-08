import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'tak_dao.dart';
// criei um metodo asincrono
Future<Database> getDatabase() async {

  // defini o caminho
  final String path = join(await getDatabasesPath(), 'task.db');
  // usei o caminho path para abrir o banco de dados
  return openDatabase(path, onCreate: (db, version) {
    db.execute(TaskDao.tableSql);
  }, version: 1,);
}