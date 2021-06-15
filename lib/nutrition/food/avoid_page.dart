import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class AvoidPage extends StatefulWidget {
  @override
  _AvoidPageState createState() => _AvoidPageState();
}

class _AvoidPageState extends State<AvoidPage> {
  String url = 'http://203.151.85.197/memo_kid/avoid/query.php';
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["avoid"];
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9C4),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, i) {
          return ListTile(
            title: Card(
              color: Colors.deepOrange[100],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 90.0,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: new Image.network(data[i]["imageM"]),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: new Text(data[i]["typeM"],style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold
                      ),),
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
        backgroundColor: Color(0xFFFFE082),
      ),
      backgroundColor: Color(0xFFFFF9C4),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: new Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.lightbulb_outline, color: Colors.pink[200]),
                          new Text('อาหารที่ควรหลีกเลี่ยง',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.deepOrange,
                          ),
                          ),
                          Icon(Icons.lightbulb_outline, color: Colors.pink[200]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 250.0,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: new Image.network(data["imageM"]),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: new Text(data["typeM"],style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: new Text('............................................',style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(data["informationM"],style: TextStyle(
                          color: Colors.purple[300]
                      ),),
                    ),
                    Image.asset('assets/images/nutritions/bit.gif',height: 110.0,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ));
}