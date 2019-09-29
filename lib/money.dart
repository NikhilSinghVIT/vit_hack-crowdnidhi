// import 'package:crowd_nidhi/login.dart';
import 'package:flutter/material.dart';
import 'money.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mongo_dart/mongo_dart.dart';

Db db = new Db("mongodb://localhost:27017/mongo_dart-blog");

class Money extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        //   appBar: AppBar(
        //   backgroundColor: Colors.black87,
        // ),
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 200.0, 10, 320),
        decoration: BoxDecoration(color: Color(0xFF933645)),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: ScreenUtil.getInstance().setHeight(500),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 15.0),
                        blurRadius: 15.0),
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, -10.0),
                        blurRadius: 10.0),
                  ]),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Enter the details",
                        style: TextStyle(
                            fontSize: ScreenUtil.getInstance().setSp(45),
                            fontFamily: "Poppins-Bold",
                            letterSpacing: .6)),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(30),
                    ),
                    Text("Money Required",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontSize: ScreenUtil.getInstance().setSp(26))),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Money Required",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12.0)),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(30),
                    ),
                    Text("Date",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontSize: ScreenUtil.getInstance().setSp(26))),
                    TextField(
                      // obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Date",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12.0)),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(35),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: <Widget>[
                    //     Text(
                    //       "Forgot Password?",
                    //       style: TextStyle(
                    //           color: Colors.blue,
                    //           fontFamily: "Poppins-Medium",
                    //           fontSize: ScreenUtil.getInstance().setSp(28)),
                    //     )
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
            Text(' '),
            InkWell(
              child: Container(
                width: ScreenUtil.getInstance().setWidth(330),
                height: ScreenUtil.getInstance().setHeight(100),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
                    borderRadius: BorderRadius.circular(6.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF6078ea).withOpacity(.3),
                          offset: Offset(0.0, 8.0),
                          blurRadius: 8.0)
                    ]),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
//   Db db = new Db("mongodb+srv://crowd-nidhi:12345@cluster0-nihwk.mongodb.net/test?retryWrites=true&w=majority");
// await db.open();

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Money()),
                      );
                    },
                    child: Center(
                      child: Text("Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins-Bold",
                              fontSize: 18,
                              letterSpacing: 1.0)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        //   child: Center(
        //       child: Column(children: <Widget>[
        //     SingleChildScrollView(
        //         child: Stack(children: <Widget>[
        //       Column(
        //         children: <Widget>[
        //           Padding(
        //             padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
        //             child: Image(
        //                 image: AssetImage('lib/res/cn.png'),
        //                 height: 300,
        //                 width: 300),
        //           ),
        //           Padding(
        //             padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        //             child: Text(
        //               'CrowdNIDHI',
        //               style: TextStyle(fontSize: 40, color: Colors.white),
        //             ),
        //           ),
        //           Padding(
        //               padding: EdgeInsets.fromLTRB(10, 65, 10, 0),
        //               child: Text(
        //                 'Raise funds online for yourself, loved ones,  \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t     charity and more',
        //                 style: TextStyle(fontSize: 20, color: Colors.white),
        //               )),
        //           Padding(
        //               padding: EdgeInsets.only(top: 60),
        //               child: ButtonTheme(
        //                 minWidth: 200.0,
        //                 height: 50.0,
        //                   child: RaisedButton(
        //                 // color:Colors.red,

        //                 color: Color.fromRGBO(213, 144, 156, 5),
        //                 // border
        //                 onPressed: () => {
        //                   Navigator.push(
        //                     context,
        //                     MaterialPageRoute(builder: (context) => Login()),
        //                   )
        //                 },
        //                 shape: RoundedRectangleBorder(
        //                     borderRadius: new BorderRadius.circular(30.0)),
        //                 child: Text('Join Us'),
        //               )))
        //         ],
        //       )
        //     ]))
        //   ])),
      ),
    ));
  }
}
