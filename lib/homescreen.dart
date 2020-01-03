import 'package:flutter/material.dart';
import 'package:santaappfbapp/usable.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[50],
        body: SafeArea(
                  child: ListView(
            children: <Widget>[
              Container(
                height: 300.0,
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0)
                            ),
                            child: Container(
                              color: Colors.red[300],
                              child: Container(
                                margin: EdgeInsets.only(top: 16.0, left: 24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Dharmapuri",
                                          style: TextStyle(color: Colors.white54),
                                        )
                                      ],
                                    ),
                                    splashScreenText(
                                        "HEY BHARATH", Colors.white, 25.0),
                                    splashScreenText(
                                        "GOOD MORNING", Colors.white, 25.0)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.orange[50],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          top: 120.0, left: 20.0, right: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10.0,
                                spreadRadius: 2.0
                                )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Ready to be a Santa?",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          Container(
                            height: 100.0,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                homeTopList('Request Gift', Icon(Icons.ac_unit)),
                                homeTopList('Send Gift', Icon(Icons.access_time)),
                                homeTopList(
                                    'Buy Gift', Icon(Icons.accessibility_new)),
                                homeTopList('Make a Wish', Icon(Icons.adb)),
                                homeTopList('Request Gift', Icon(Icons.airplay)),
                                homeTopList('Request Gift', Icon(Icons.ac_unit)),
                                homeTopList('Send Gift', Icon(Icons.access_time)),
                                homeTopList(
                                    'Buy Gift', Icon(Icons.accessibility_new)),
                                homeTopList('Make a Wish', Icon(Icons.adb)),
                                homeTopList('Request Gift', Icon(Icons.airplay)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200.0),
                      width: 150.0,
                      height: 150.0,
                      child: Image.asset(
                        'images/santa.png',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: <Widget>[
                          splashScreenText('POPULAR', Colors.black, 20.0),
                          Expanded(
                            child: Container(),
                          ),
                          Text('See all')
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        popularList(
                            'Pack of ten wine bottles', '120ml Bottle', '120/-'),
                        popularList(
                            'Christmas decoration kit', '75 items', '280/-'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      splashScreenText('GIFT BOX', Colors.black, 20.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Custom gift boxes for friends and family can any gift which you think they want',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            listBox(),
                            listBox(),
                            listBox(),
                            listBox(),
                            listBox(),
                            listBox(),
                            listBox(),
                            listBox(),
                            listBox(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
