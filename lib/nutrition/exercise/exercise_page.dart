import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  String url = 'http://203.151.85.197/memo_kid/exercise/query.php';
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["exercises"];
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
      body: Stack(
        alignment: Alignment.topCenter,

        children: <Widget>[
          Container(
            width: 400,
            height: 390,
            child: Image.asset('assets/images/ex/photo.png', fit: BoxFit.contain,),
          ),

          Positioned(
            child: Row(
              children: <Widget>[
                Icon(Icons.star_border, color: Colors.pink[200]),
                Text("การออกกำลังกาย", style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),),
                Icon(Icons.star_border, color: Colors.pink[200]),
              ],
            ),
            top: 18,
            left: 20,
          ),

          DraggableScrollableSheet(
            maxChildSize: 0.85,
            minChildSize: 0.1,
            builder: (BuildContext context, ScrollController scrolController){
              return Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFAED581),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                    ),
                    child: ListView.builder(
                      itemCount: data == null ? 0 : data.length,
                      itemBuilder: (BuildContext context, i) {
                        return ListTile(
                          title: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
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
                  ),

                  Positioned(
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_downward, color: Colors.white,),
                      backgroundColor: Colors.pinkAccent[100],
                    ),
                    top: -30,
                    right: 30,
                  ),
                ],
              );
            },
          )
        ],
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
        child: new Card(
          color: Colors.amber[100],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Container(
                  child: new Column(
                      children: <Widget>[
                        Container(
                          height: 250.0,
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: new Image.network(data["imageM"]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: new Text(data["typeM"],style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new Text('............................................',style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: new Text(data["informationM"],style: TextStyle(
                              color: Colors.purple
                          ),),
                        ),
                        Image.asset('assets/images/ex/ex.png',height: 110.0,)
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ));
}
