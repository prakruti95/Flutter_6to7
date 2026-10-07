import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class Dbhelper
{
    late Database db;

    Future open()async
    {
      var dbpath = await getDatabasesPath();
      print("Hello $dbpath");
      String path = join(dbpath,"tops.db");
      print("Hii $path");

      db = await openDatabase(path,version: 1,onCreate: (Database db,int version)async
      {
        await db.execute('''CREATE TABLE IF NOT EXISTS students( 
                          name varchar(255) not null,
                          email varchar(255) not null,
                          password varchar(255) not null
                      );''');
      });
    }

}