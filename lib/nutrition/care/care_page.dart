import 'package:app_memokid/nutrition/care/care_data.dart';
import 'package:flutter/material.dart';

class CarePage extends StatefulWidget {
  @override
  _CarePageState createState() => _CarePageState();
}

class _CarePageState extends State<CarePage>
    with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.yellow[100], Colors.yellow[300],],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(Icons.star_border, color: Colors.pink[200]),
                Text('การดูแลครรภ์',
                    style: TextStyle(
                        fontFamily: 'Sriracha',
                        color: Colors.purple,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold)),
                Icon(Icons.star_border, color: Colors.pink[200]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 40.0,child: Image.asset('assets/images/icons/c1.png'),),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(bottom: 10.0),
              height: MediaQuery.of(context).size.height *0.75,
              child: CareData(),
            ),
          ],
        ),
      ),
    );
  }
}

