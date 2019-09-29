// import 'package:crowd_nidhi/login.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Crowd Nidhi',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //   appBar: AppBar(
      //   backgroundColor: Colors.black87,
      // ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF933645)),
        child: Center(
            child: Column(children: <Widget>[
          SingleChildScrollView(
              child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
                  child: Image(
                      image: AssetImage('lib/res/cn.png'),
                      height: 300,
                      width: 300),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    'CrowdNIDHI',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 65, 10, 0),
                    child: Text(
                      'Raise funds online for yourself, loved ones,  \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t     charity and more',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: ButtonTheme(
                      minWidth: 200.0,
                      height: 50.0,
                        child: RaisedButton(
                      // color:Colors.red,

                      color: Color.fromRGBO(213, 144, 156, 5),
                      // border
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        )
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text('Join Us'),
                    )))
              ],
            )
          ]))
        ])),
      ),
    );
  }
}
