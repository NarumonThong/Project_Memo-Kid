import 'package:flutter/material.dart';

class SourcePage extends StatefulWidget {
  @override
  _SourcePageState createState() => _SourcePageState();
}

class _SourcePageState extends State<SourcePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Color(0xFFFFF9C4),
          ),
          Positioned(
            top: screenHeight / 2 + 125.0,
            child: Text('Memo',
                style: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontSize: 125.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
            child: Container(
              height: 40.0,
              // width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.star_border, color: Colors.pink[200]),
                  Icon(Icons.star_border, color: Colors.pink[200]),
                  Text('แหล่งที่มาข้อมูล',
                      style: TextStyle(
                          fontFamily: 'Sriracha',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF274B61)
                      )
                  ),
                  Icon(Icons.star_border, color: Colors.pink[200]),
                  Icon(Icons.star_border, color: Colors.pink[200]),
                ],
              ),
            ),
          ),
          Positioned(
            top: 80.0,
            left: 24.0,
            child: Container(
              width: screenWidth - 50.0,
              child: Text('Memo-kid เป็นแอปพลิเคชันสำหรับมือถือ ที่พัฒนาโดยทีมผู้มีความหวังอันแรงกล้าที่จะทำให้เด็กทารกในครรภ์มีสุขภาพดี เพื่อช่วยในการดูแล และติดตามการเจริญเติบโตพัฒนาการและสุขภาพของเด็ก'
                  'โดยมีแหล่งที่มาของข้อมูล ดังต่อไปนี้ ',
                  style: TextStyle(
                      fontFamily: 'Sriracha',
                      fontSize: 13.0,
                      color: Colors.indigo
                  )
              ),
            ),
          ),
          Positioned(
              top: 185.0,
              left: 14.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('>>  พฤติกรรมส่งเสริม',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              color: Colors.green
                          )
                      ),
                      Text('สุขภาพหญิงตังคั้งครรภ์',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              color: Colors.green
                          )
                      ),
                      SizedBox(height: 6.0),
                      Text('มหาวิทยาลัยเกษมบัณฑิต',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          )
                      ),
                      SizedBox(height: 25.0),
                      Text('>>  การฝากครรภ์และพฤติกรรม',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              color: Colors.purple
                          )
                      ),
                      Text('การดูแลตนเองของหญิงตั้งครรภ์',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              color: Colors.purple
                          )
                      ),
                      SizedBox(height: 6.0),
                      Text('โรงพยาบาลส่งเสริมสุขภาพ ศ.11',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          )
                      ),
                      SizedBox(height: 25.0),
                      Text('>> พัฒนาการของทารก',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              color: Colors.blue
                          )
                      ),
                      SizedBox(height: 6.0),
                      Text('มี้ด จอห์นสัน ประเทศไทย',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          )
                      ),
                      SizedBox(height: 25.0),
                      Text('>>  อาหารและโภชนาการ',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              color: Colors.pink
                          )
                      ),
                      SizedBox(height: 6.0),
                      Text('TheAsianparent Thialand',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          )
                      ),
                      SizedBox(height: 25.0),
                      Text('>>  เบอร์ ฉุกเฉิน โรงพยาบาล',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              color: Colors.indigo
                          )
                      ),
                      SizedBox(height: 6.0),
                      Text('Amarin Baby&Kids',
                          style: TextStyle(
                              fontFamily: 'Sriracha',
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          )
                      ),


                    ],
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      height: 150.0,
                      width: 420.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/notification/so.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}

