import 'package:app_memokid/custom_drawer/app_theme.dart';
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
            child: Text("การออกกำลังกาย", style: TextStyle(color: AppTheme.darkerText, fontSize: 27, fontWeight: FontWeight.bold),),
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
                      child: Icon(Icons.arrow_downward, color: Colors.white,),
                      backgroundColor: Colors.pinkAccent[100],
                    ),
                    top: -30,
                    right: 30,
                  )
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
            child: Container(
              child: new Column(
                  children: <Widget>[
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
                      child: new Text(data["typeM"],style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(data["informationM"]),
                    ),
                  ],
                ),
            ),
          ),
        ),
      ));
}
