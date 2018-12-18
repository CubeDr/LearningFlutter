import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize:  MainAxisSize.min, // ?
        mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color
              )
            )
          )
        ],
      );
    }
    
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle( fontWeight: FontWeight.bold )
                  )
                ),
                Text(
                  'Kandersteg, Switzerlang',
                  style: TextStyle( color: Colors.grey[500] )
                )
              ],
            )
          ),
          Icon(
            Icons.star,
            color: Colors.red[500]
          ),
          Text('41')
        ],
      )
    );
    
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE')
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text('''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
          ''',
        softWrap: true,
      )
    );


    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App')
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/lake.jpg',
              height: 240,
              fit: BoxFit.cover
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        )
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}