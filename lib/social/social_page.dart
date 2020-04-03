import 'package:app_memokid/social/home_page.dart';
import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  @override
  _SocialPageState createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      backgroundColor: Color(0xFFFFF9C4),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset('assets/images/social/social.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 65.0,
                      color: Colors.pink[50],
                      child: ListTile(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        title: Text(
                          'Social',
                          style: TextStyle(
                              fontSize:18.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
