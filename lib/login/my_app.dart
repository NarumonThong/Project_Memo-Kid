import 'package:app_memokid/custom_drawer/main_home.dart';
import 'package:app_memokid/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAppLogin extends StatefulWidget {
  @override
  _MyAppLoginState createState() => _MyAppLoginState();
}

class _MyAppLoginState extends State<MyAppLogin> {
  SharedPreferences sharedPreferences;

  checkLogin() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var loginFlag = sharedPreferences.getString('loginFlag');
    print(loginFlag);
    if (loginFlag == '1') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      checkLogin();
    });
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
