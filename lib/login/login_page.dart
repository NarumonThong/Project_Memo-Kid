import 'package:app_memokid/custom_drawer/main_home.dart';
import 'package:app_memokid/home_page/home_page.dart';
import 'package:app_memokid/login/register_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visible = false;

  final _usernameCtrl = new TextEditingController();
  final _passwordCtrl = new TextEditingController();

  TextEditingController usr = new TextEditingController();
  TextEditingController pwd = new TextEditingController();

  Future userLogin() async {
    setState(() {
      visible = true;
    });

    // Getting value from Coltroller
    String _username = _usernameCtrl.text.trim();
    String _password = _passwordCtrl.text;

    // Server Login api url
    var url = 'http://203.151.85.197/memo_kid/loginapp/signin.php';

    // store all data with param name
    var data = {'username': _username, 'passwords': _password};

    // starting web api call.
    var response = await http.post(url, body: json.encode(data));

    Map<String, dynamic> message = jsonDecode(response.body);

    print('${message['status']}');

    //  if the response Message is Matched.
    if ('${message['status']}' == 'true') {
      setState(() {
        visible = false;
      });

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyApp()));

      print('login success');
    } else {
      setState(() {
        visible = false;
      });

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Warning'),
              content: Text('Username or Password Invalid !'),
              actions: <Widget>[
                FlatButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/login/bg.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/images/login/mom_login.png',
                      width: 150.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'MEMO-KID',
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: TextField(
                      controller: _usernameCtrl,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Username',
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: TextField(
                      controller: _passwordCtrl,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock_open),
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        child: Text('Sign In'),
                        color: Colors.blue[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        onPressed: () {
                          // todo
                          userLogin();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Text.rich(
                          TextSpan(
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Create Account?  ',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                ),
                              ),
                              TextSpan(
                                text: 'Click',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          //TODO...
                          debugPrint('create account click');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
