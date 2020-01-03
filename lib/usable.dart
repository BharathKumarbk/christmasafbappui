import 'package:flutter/material.dart';

Text splashScreenText(String title, Color color, double size) {
  return Text(
    "$title",
    style: TextStyle(color: color, fontSize: size, fontFamily: 'Oswald'),
  );
}

Widget homeTopList(String text, Icon icon) {
  return Container(
    width: 100.0,
    child: Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.black12,
          foregroundColor: Colors.red[400],
          radius: 30.0,
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('$text'),
        )
      ],
    ),
  );
}

Container popularList(String title, String subtitle, String price) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
              color: Colors.black12,
              width: 100.0,
              height: 100.0,
              child: Image.asset('images/flutterlogo.png')),
        ),
        SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$title',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('$subtitle'),
            SizedBox(
              height: 35.0,
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                  ],
                ),
                SizedBox(
                  width: 100.0,
                ),
                Text(
                  '$price',
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget listBox() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black54, blurRadius: 4.0, spreadRadius: 1.0)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
              child: FlatButton(
          color: Colors.red[300],
          onPressed: () {},
          splashColor: Colors.white,
          child: Container(
            width: 140.0,
            height: 200.0,
            child: Image.asset('images/flutterlogo.png'),
          ),
        ),
      ),
    ),
  );
}
