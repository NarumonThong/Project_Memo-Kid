import 'package:app_memokid/login/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstnameCtrl = TextEditingController();
  TextEditingController _lastnameCtrl = TextEditingController();
  TextEditingController _usernameCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();
  TextEditingController _conpasswordCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _conemailCtrl = TextEditingController();
  TextEditingController _telCtrl = TextEditingController();
  TextEditingController _birthCtrl = TextEditingController();

  bool visible = false;

  Future userSignup() async {
    setState(() {
      visible = true;
    });

    // get value form
    String _firstname = _firstnameCtrl.text;
    String _lastname = _lastnameCtrl.text;
    String _username = _usernameCtrl.text;
    String _password = _passwordCtrl.text;
    String _conpassword = _conpasswordCtrl.text;
    String _email = _emailCtrl.text;
    String _tel = _telCtrl.text;
    String _birth = _birthCtrl.text;
    String _pwd;

    if (_password == _conpassword) {
      _pwd = _password;
    }

    // store all data with param name
    var data = {
      'firstname': _firstname,
      'lastname': _lastname,
      'username': _username,
      'passwords': _pwd,
      'email': _email,
      'tel': _tel,
      'birth': _birth
    };

    // Server Login api url
    var url = 'http://203.151.85.197/memo_kid/loginapp/signup.php';

    // starting web api call.
    var response = await http.post(url, body: json.encode(data));

    Map<String, dynamic> message = jsonDecode(response.body);
    //var message = jsonDecode(response.body);

    print(data);
    print('${message}');

    //  if the response Message is Matched.
    if ('${message['status']}' == 'true') {
      setState(() {
        visible = false;
      });

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Warning'),
              content: Text('Signin success'),
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

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));

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
              content: Text('Username or Email already exists!'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent[100],
      ),
      backgroundColor: Colors.yellow[100],
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _firstnameCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Firstname',
                              hintText: 'Firstname',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _lastnameCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Lastname',
                              hintText: 'Lastname',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _usernameCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Username',
                              hintText: 'Username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          obscureText: true,
                          controller: _passwordCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Password',
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          obscureText: true,
                          controller: _conpasswordCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Confirm Password',
                              hintText: 'Confirm Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _emailCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: 'E-Mail',
                              hintText: 'E-Mail',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          controller: _telCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: 'Tel',
                              hintText: 'Tel',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _birthCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.card_giftcard),
                              labelText: 'Birth Day',
                              hintText: 'Birth Day',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.teal[100],
                          onPressed: () {
                            // todo
                            print('signup');
                            userSignup();
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'Create',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Visibility(
                visible: visible,
                child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: CircularProgressIndicator())),
          ),
        ],
      ),
    );
  }
}
