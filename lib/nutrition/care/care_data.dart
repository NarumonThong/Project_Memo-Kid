import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class CareData extends StatefulWidget {
  @override
  _CareDataState createState() => _CareDataState();
}

class _CareDataState extends State<CareData> {
  String url = 'http://203.151.85.197/memo_kid/care/query.php';
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["cares"];
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, i) {
          return ListTile(
            title: Card(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Column(
                        children: <Widget>[
                          new Image.network(data[i]["imageM"]),
                          SizedBox(height: 8.0,
                          ),
                          new Text(data[i]["typeM"],style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new SecondPage(data[i])
                  ));
            },
          );
        },
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  SecondPage(this.data);
  final data;
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFFFFE082)
      ),
      backgroundColor: Color(0xFFFFF9C4),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            new Card(
              color: Colors.amber[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: new Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 100.0,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new Image.network(data["imageM"]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Text(data["typeM"],style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                        child: new Text(data["informationM"],style: TextStyle(
                          fontSize: 12.0,
                            color: Colors.purple
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.0),
                        child: new Text(data["type2M"],style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                        child: new Text(data["information2M"],style: TextStyle(
                          fontSize: 12.0,
                            color: Colors.brown
                        ),),
                      ),
                      Container(
                        height: 80.0,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: new Image.network(data["photoM"]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: new Text(data["type3M"],style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                        child: new Text(data["information3M"],style: TextStyle(
                          fontSize: 12.0,
                            color: Colors.brown
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}
