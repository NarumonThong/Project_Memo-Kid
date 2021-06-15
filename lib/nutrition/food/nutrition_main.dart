import 'package:app_memokid/nutrition/food/avoid_page.dart';
import 'package:app_memokid/nutrition/food/food_page.dart';
import 'package:app_memokid/nutrition/food/fruit_page.dart';
import 'package:app_memokid/nutrition/food/nutrient_page.dart';
import 'package:flutter/material.dart';

class MyNutritionPage extends StatefulWidget {
  @override
  _MyNutritionPageState createState() => _MyNutritionPageState();
}

class _MyNutritionPageState extends State<MyNutritionPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.yellow[100], Colors.yellow[400]],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            SizedBox(height: 10.0),

            Row(
              children: <Widget>[
                Icon(Icons.star_border, color: Colors.pink[200]),
                Text('อาหารและโภชนาการ',
                    style: TextStyle(
                        fontFamily: 'Sriracha',
                        color: Colors.green,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold)
                ),
                Icon(Icons.star_border, color: Colors.pink[200]),
              ],
            ),
            SizedBox(height: 15.0),
            TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.indigo,
                isScrollable: true,
                labelPadding: EdgeInsets.all(2.0),
                unselectedLabelColor: Color(0xFFC88D67),
                tabs: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    //color: Colors.pink,
                    child: Tab(icon: Container(
                        height: 35.0,
                        child: Image.asset('assets/images/nutritions/on1.png')
                    ),
                      text: "อาหารบำรุงครรภ์",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    //color: Colors.pink,
                    child: Tab(icon: Container(
                      height: 36.0,
                        child: Image.asset('assets/images/nutritions/on2.png')
                    ),
                      text: "ผลไม้ที่สำคัญ",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Tab(icon: Container(
                        height: 36.0,
                        child: Image.asset('assets/images/nutritions/on3.png')
                    ),
                      text: "สารอาหารที่สำคัญ",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Tab(icon: Container(
                        height: 36.0,
                        child: Image.asset('assets/images/nutritions/on4.png')
                    ),
                      text: "อาหารที่ควรหลีกเลี่ยง",
                    ),
                  ),
                ]),
            Container(
              padding: EdgeInsets.only(bottom: 10.0),
              height: MediaQuery.of(context).size.height *0.65,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    FoodPage(),
                    FruitPage(),
                    NutrientPage(),
                    AvoidPage(),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

