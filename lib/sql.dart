import 'package:mysql1/mysql1.dart';

Future tempuser(mail) async {
  final conn = await MySqlConnection.connect(new ConnectionSettings(
      host: 'us-cdbr-iron-east-02.cleardb.net',
      port: 3306,
      user: 'bef9e37248cd32',
      db: 'heroku_24e8568d1818909',
      password: 'd2c0d068'));
  var results =
      await conn.query('insert into navya (nikhil) values ( ?)', [mail]);
      await conn.close();

}
