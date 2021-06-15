import 'package:app_memokid/notifications/condition_page.dart';
import 'package:app_memokid/notifications/source_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  void openUrl(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'could not open url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      backgroundColor: Color(0xFFFFF9C4),
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Column(
              children: <Widget>[
                SizedBox(height: 70.0),
                SizedBox(
                  height: 0.0,
                ),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    padding: EdgeInsets.only(
                        top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                    onPressed: () {
//                      DeviceApps.openApp('jp.naver.line.android');
//                      DeviceApps.openApp('https://lin.ee/4eRkkBZDC');
                      openUrl('https://lin.ee/4eRkkBZDC');


                    },
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/notification/n1.png',
                          height: 40.0,
                          width: 40.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: new Text(
                              "Line  ",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    textColor: Color(0xFF292929),
                    color: Colors.green),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 30.0, bottom: 0.0),
                  child: new RaisedButton(
                      elevation: 0.0,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      padding: EdgeInsets.only(
                          top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                      onPressed: () {
                       openUrl('https://www.facebook.com/memokidsau/?modal=admin_todo_tour');
                      },
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset('assets/images/notification/n2.png',
                              height: 40.0, width: 40.0),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: new Text(
                                "Facebook Fanpage",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ))
                        ],
                      ),
                      textColor: Color(0xFF292929),
                      color: Colors.blueAccent),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 30.0, bottom: 0.0),
                  child: new RaisedButton(
                      elevation: 0.0,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      padding: EdgeInsets.only(
                          top: 7.0, bottom: 7.0, right: 25.0, left: 7.0),
                      onPressed: () async {
                        Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    new SourcePage()
                                ));
                      },
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            'assets/images/notification/n3.png',
                            height: 40.0,
                            width: 40.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: new Text(
                                "แหล่งที่มาข้อมูล/เอกสารอ้างอิง",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ))
                        ],
                      ),
                      textColor: Color(0xFF292929),
                      color: Colors.red[300]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 30.0, bottom: 0.0),
                  child: new RaisedButton(
                      elevation: 0.0,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      padding: EdgeInsets.only(
                          top: 7.0, bottom: 7.0, right: 25.0, left: 7.0),
                      onPressed: () async {
                        Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    new ConditionPage()
                                ));
                      },
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            'assets/images/notification/n4.png',
                            height: 40.0,
                            width: 40.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: new Text(
                                "เงื่อนไขและข้อตกลงในการใช้งาน ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ))
                        ],
                      ),
                      textColor: Color(0xFF292929),
                      color: Colors.amberAccent),
                ),
                SizedBox(height: 15.0,),
                Container(
                  child: Image.asset('assets/images/notification/cg.png', height: 130.0,),
                )
              ],
            )
          ],
        ));

  }
}

