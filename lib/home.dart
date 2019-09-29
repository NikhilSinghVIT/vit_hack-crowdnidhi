import 'package:flutter/material.dart';
import 'fundraiser.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //   appBar: AppBar(
      //   backgroundColor: Colors.black87,
      // ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF933645)),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              SingleChildScrollView(
                  child: Stack(children: <Widget>[
                Column(
                  children: <Widget>[

                    GestureDetector(
                      onTap: ()=>{
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fundraiser()),
                        )
                      },
                    child:Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Setup a fundraiser",
                                style: TextStyle(
                                    fontSize: 30.0, color: Color(0xFF933645)),
                              ),
                            ],
                          ),
                          Text(
                              "Fill a few details about who you are, and who you are fundraising for")
                        ])),
                    ),

                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Start Crowdfunding",
                                style: TextStyle(
                                    fontSize: 30.0, color: Color(0xFF933645)),
                              ),
                            ],
                          ),
                          Text(
                              "Receive donations from friends, family and even unknowns around the world")
                        ])),


                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Withdraw Funds",
                                style: TextStyle(
                                    fontSize: 30.0, color: Color(0xFF933645)),
                              ),
                            ],
                          ),
                          Text(
                              "Receive donations from friends, family and even unknowns around the world")
                        ]))


                  ],
                )
              ]))
            ])),
      ),
    );
  }
}
