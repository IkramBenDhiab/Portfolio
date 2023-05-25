import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/aboutme.model.dart';

class AboutmeDatabase {
  static Database? _database;
  initDB() async{
    if(_database == null){
      String databasePath = await getDatabasesPath();
      String _path = join(databasePath,'your_database_path.d');
      _database = await openDatabase( _path, version: 1, onCreate: onCreate);
    }
  }
  onCreate(Database db, int version) async{
    String sql =
        'CREATE TABLE aboutme (Firstname STRING, Lastname STRING, tel INT,linkedinLink STRING, EmailLink STRING, Address STRING)';
    await db.execute(sql);
  }
  Future<List<Map<String, dynamic>>> recuperer() async{

    await initDB();
    return _database!.query(Aboutme.table);
  }
  void ajouterDonnees() async {
    final Database db = await openDatabase('your_database_path.db');

    await db.insert(
      'aboutme',
      {
        'Firstname': 'Ikram',
        'Lastname': 'Ben Dhiab',
        'Phone': 42231632,
        'linkedinLink': 'https://www.linkedin.com/in/ikram-ben-dhieb-9672041b1/',
        'EmailLink': 'ikram.bendhieb2019@gmail.com',
        'Address': 'Sahline , Monastir , Tunisia',
      },
    );
  }
}
