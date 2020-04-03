import 'package:app_memokid/nutrition/care/care_page.dart';
import 'package:app_memokid/nutrition/exercise/exercise_page.dart';
import 'package:app_memokid/nutrition/food/nutrition_main.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MyNutritiomPage extends StatefulWidget {
  @override
  _MyNutritiomPageState createState() => _MyNutritiomPageState();
}

class _MyNutritiomPageState extends State<MyNutritiomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      backgroundColor: Color(0xFFFFF9C4),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 16.0),
            height: MediaQuery.of(context).size.height * 0.35,
            color: Color(0xFFFFF59D),
            child: Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage('assets/images/nutritions/num1.jpg'),
                AssetImage('assets/images/nutritions/num2.jpg'),
                AssetImage('assets/images/nutritions/num3.jpg'),
                AssetImage('assets/images/nutritions/num4.jpg'),
              ],
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 2000),
            ),
          ),
          Column(
            children: <Widget>[
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
                                MaterialPageRoute(builder: (context) => MyNutritionPage()),
                              );
                            },
                            leading: Icon(Icons.add_circle),
                            title: Text(
                              'อาหารและโภชนาการ',
                              style: TextStyle(
                                  fontSize:18.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 65.0,
                          color: Colors.pink[50],
                          child: ListTile(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExercisePage()),
                              );
                            },
                            leading: Icon(Icons.add_circle),
                            title: Text(
                              'การออกกำลังกาย',
                              style: TextStyle(
                                  fontSize:18.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 65.0,
                          color: Colors.pink[50],
                          child: ListTile(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CarePage()),
                              );
                            },
                            leading: Icon(Icons.add_circle),
                            title: Text(
                              'การดูแลครรภ์',
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
        ],
      ),
    );
  }

}
