import 'package:app_memokid/custom_drawer/main_home.dart';
import 'package:app_memokid/login/register_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visible = false;
  SharedPreferences sharedPreferences;
  final _usernameCtrl = new TextEditingController();
  final _passwordCtrl = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  TextEditingController usr = new TextEditingController();
  TextEditingController pwd = new TextEditingController();

  _signin() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (_formKey.currentState.validate()) {
      String _username = _usernameCtrl.text.trim();
      String _password = _passwordCtrl.text;
      var url = 'http://203.151.85.197/memo-kid/signin.php';
      var data = {'username': _username, 'passwords': _password};
      var response = await http.post(url, body: json.encode(data));
      Map<String, dynamic> message = jsonDecode(response.body);

      if(message['status'] == true){
        setState(() {
          sharedPreferences.setString('loginFlag', '1');
        });
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp()));

      }else{
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.amber[100],
                title: Text(
                  'คำเตือน',
                  style: TextStyle(color: Colors.red),
                ),
                content: Text('ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง !'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('ตกลง'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/login/bg.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  Text('บันทึกของลูก',
//                  style: TextStyle(fontSize: 30),
//                  ),
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
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty || value.length < 5) {
                          return 'ชื่อผู้ใช้ห้ามต่ำกว่า 5 ตัวอักษร';
                        }
                        return null;
                      },
                      controller: _usernameCtrl,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'ชื่อผู้ใช้',
                        labelText: 'ชื่อผู้ใช้',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty || value.length < 5) {
                          return 'รหัสผ่านห้ามต่ำกว่า 5 ตัวอักษร';
                        }

                        return null;
                      },
                      controller: _passwordCtrl,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock_open),
                        hintText: 'รหัสผ่าน',
                        labelText: 'รหัสผ่าน',
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
                        child: Text('เข้าสู่ระบบ'),
                        color: Colors.blue[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        onPressed: _signin,
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
                                text: 'สมัครสมาชิก?  ',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                ),
                              ),
                              TextSpan(
                                text: 'คลิ๊ก',
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
                          debugPrint('create Acctound');
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
