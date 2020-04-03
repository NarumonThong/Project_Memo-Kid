import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class NutrientPage extends StatefulWidget {
  @override
  _NutrientPageState createState() => _NutrientPageState();
}

class _NutrientPageState extends State<NutrientPage> {
  String url = 'http://203.151.85.197/memo_kid/nutrient/query.php';
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["nutrient"];
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
                    SizedBox(
                      height: 8.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: new Text(data[i]["nameM"],style: TextStyle(
                          fontSize: 11.0,
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
  Widget build(BuildContext context) => new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFFFFE082),
        title: new Text(
          'รายละเอียด',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: new Card(
          color: Color(0xFFFFF9C4),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: new Text('สารอาหารจำเป็น',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.deepOrange,
                      ),
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
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(data["nameM"],style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(data["informationM"]),
                    ),
                    Container(
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Text(data["typeM"],style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green
                          ),),
                          Text(data["dataM"]),
                        ],
                      ),

                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ));
}
