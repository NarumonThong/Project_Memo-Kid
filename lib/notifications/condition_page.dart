import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

class ConditionPage extends StatefulWidget {
  @override
  _ConditionPageState createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {

  String url = 'http://203.151.85.197/memo_kid/condition/query.php';
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["condition"];
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      backgroundColor: Color(0xFFFFF9C4),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, i){
            return ListTile(
              title: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      new Text(data[i]["typeM"],style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 7.0,),
                      new Text(data[i]["informationM"],style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.purple,
                        ),
                      ),
                      Image.asset('assets/images/notification/aa.gif',height: 90.0,)


                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
