import 'package:app_memokid/diary/menu/count_page.dart';
import 'package:app_memokid/diary/menu/erraticness_page.dart';
import 'package:app_memokid/diary/menu/gallery_page.dart';
import 'package:app_memokid/diary/menu/height_page.dart';
import 'package:app_memokid/diary/menu/note_page.dart';
import 'package:app_memokid/diary/menu/weight_page.dart';
import 'package:flutter/material.dart';

class DiaryPage extends StatefulWidget {
  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        //title: Text("Note App"),
        backgroundColor: Color(0xFFFFE082),
      ),
      backgroundColor: Color(0xFFFFF9C4),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(6.0),
          children: <Widget>[
            makeDashboardItem("การนับลูกดิ้น", Icons.book),
            makeDashboardItem2("อาการผิดปกติ", Icons.alarm),
            makeDashboardItem3("น้ำหนัก", Icons.alarm),
            makeDashboardItem4("ส่วนสูง", Icons.alarm),
            makeDashboardItem5("Gallery", Icons.alarm),
            makeDashboardItem6("Note", Icons.alarm)
          ],

        ),
      ),
    );
  }
  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 2.0,
        margin: new EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(100, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new CountPage()
                  ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                      new TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Card makeDashboardItem2(String title, IconData icon) {
    return Card(
        elevation: 2.0,
        margin: new EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(100, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new ErraticnessPage()
                  ));
//              Navigator.push(
//                  context,
//                  new MaterialPageRoute(
//                      builder: (BuildContext context) =>
//                      new WeightPage()
//                  ));

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                    style:
                    new TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Card makeDashboardItem3(String title, IconData icon) {
    return Card(
        elevation: 2.0,
        margin: new EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(100, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new WeightPage()
                  ));

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                    style:
                    new TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Card makeDashboardItem4(String title, IconData icon) {
    return Card(
        elevation: 2.0,
        margin: new EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(100, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new HeightPage()
                  ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                    style:
                    new TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Card makeDashboardItem5(String title, IconData icon) {
    return Card(
        elevation: 2.0,
        margin: new EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(100, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new GalleryPage()
                  ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                    style:
                    new TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Card makeDashboardItem6(String title, IconData icon) {
    return Card(
        elevation: 2.0,
        margin: new EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(100, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new NotePage()
                  ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                    style:
                    new TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
