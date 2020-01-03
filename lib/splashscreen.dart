import 'package:flutter/material.dart';
import 'package:santaappfbapp/usable.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 20.0,
                        spreadRadius: 5.0
                      )
                    ]
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      splashScreenText('THIS', Colors.black, 60.0),
                      splashScreenText('CHRISTMAS', Colors.red, 60.0),
                      splashScreenText('BE A', Colors.black, 60.0),
                      splashScreenText('SECRET', Colors.black, 60.0),
                      splashScreenText('SANTA', Colors.red, 60.0),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Divider(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'Send Gifts to your ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                              children: [
                                TextSpan(
                                    text: 'Loved Ones',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal))
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Container(
                      height: 60.0,
                      width: double.infinity,
                      child: FlatButton(
                        splashColor: Colors.orange[100],
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          'Lets Explore',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
