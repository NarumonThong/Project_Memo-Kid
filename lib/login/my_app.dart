import 'package:app_memokid/login/login_page.dart';
import 'package:flutter/material.dart';

class MyAppLogin extends StatefulWidget {
  @override
  _MyAppLoginState createState() => _MyAppLoginState();
}

class _MyAppLoginState extends State<MyAppLogin> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/login/one.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),

    );
  }
}
