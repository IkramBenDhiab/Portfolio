import 'package:sqflite/sqflite.dart';

class Aboutme{
  static String table = "aboutme";


  String? Firstname;
  String? Lastname;
  int? Phone;
  String? linkedinLink;
  String? EmailLink;
  String? Address;
  Aboutme({
    this.Firstname,
    this.Lastname,
    this.Phone,
    this.linkedinLink,
    this.EmailLink,
    this.Address,
  });

  static Future<List<Aboutme>> getAllAboutme() async {
    final Database db = await openDatabase('your_database_path.db');

    final List<Map<String, dynamic>> maps = await db.query(table);

    return List.generate(maps.length, (index) {
      return Aboutme(
        Firstname: maps[index]['Firstname'],
        Lastname: maps[index]['Lastname'],
        Phone: maps[index]['Phone'],
        linkedinLink: maps[index]['linkedinLink'],
        EmailLink: maps[index]['EmailLink'],
        Address: maps[index]['Address'],
      );
    });
  }
  Map<String, dynamic> toJson(){
    return {

      'Firstname': Firstname,
      'Lastname' : Lastname,
      'Phone' : Phone,
      'linkedinLink': linkedinLink,
      'EmailLink': EmailLink,
      'Address': Address,
    };

  }
}