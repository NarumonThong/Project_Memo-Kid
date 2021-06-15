import 'package:app_memokid/login/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rflutter_alert/rflutter_alert.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var pickeddate;
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstnameCtrl = TextEditingController();
  TextEditingController _lastnameCtrl = TextEditingController();
  TextEditingController _usernameCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();
  TextEditingController _conpasswordCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _telCtrl = TextEditingController();

  bool visible = false;

  userSignup() async {
    setState(() {
      visible = true;
    });

    String _firstname = _firstnameCtrl.text;
    String _lastname = _lastnameCtrl.text;
    String _username = _usernameCtrl.text;
    String _password = _passwordCtrl.text;
    String _conpassword = _conpasswordCtrl.text;
    String _email = _emailCtrl.text;
    String _tel = _telCtrl.text;
    String _pwd;

    if (_password == _conpassword) {
      _pwd = _password;

      // store all data with param name
      var data = {
        'firstname': _firstname,
        'lastname': _lastname,
        'username': _username,
        'passwords': _pwd,
        'email': _email,
        'tel': _tel,
      };

      // Server Login api url
      var url = 'http://203.151.85.197/memo-kid/signup.php';

      // starting web api call.
      var response = await http.post(url, body: json.encode(data));
      Map<String, dynamic> message = jsonDecode(response.body);

      //  if the response Message is Matched.
      if (message['status'] == true) {
        setState(() {
          visible = false;
        });

        Navigator.pushReplacement(
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
    } else {
      setState(() => visible = false);
      Alert(
        context: context,
        type: AlertType.warning,
        title: "รหัสผ่านไม่ตรงกัน",
        desc: "",
        buttons: [
          DialogButton(
            child: Text(
              "ตกลง",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Color.fromRGBO(0, 179, 134, 1.0),
            radius: BorderRadius.circular(0.0),
          ),
        ],
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text('สมัครสมาชิก'),
//        centerTitle: true,
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
                              labelText: 'ชื่อ',
                              hintText: 'ชื่อ',
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
                              labelText: 'นามสกุล',
                              hintText: 'นามสกุล',
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
                          validator: (value) {
                            if (value.isEmpty || value.length < 5) {
                              return 'ชื่อผู้ใช้ห้ามต่ำกว่า 5 ตัวอักษร';
                            }
                            return null;
                          },
                          controller: _usernameCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'ชื่อผู้ใช้',
                              hintText: 'ชื่อผู้ใช้',
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
                          validator: (value) {
                            if (value.isEmpty || value.length < 5) {
                              return 'รหัสผ่านห้ามต่ำกว่า 5 ตัวอักษร';
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: _passwordCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'รหัสผ่าน',
                              hintText: 'รหัสผ่าน',
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
                          validator: (value) {
                            if (value.isEmpty || value.length < 5) {
                              return 'รหัสผ่านห้ามต่ำกว่า 5 ตัวอักษร';
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: _conpasswordCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'ยืนยันรหัสผ่าน',
                              hintText: 'ยืนยันรหัสผ่าน',
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
                          validator: (value) {
                            if (value.isEmpty || value.length < 10) {
                              return 'หมายเลขโทรศัพท์ห้ามต่ำกว่า 10 ตัวอักษร';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          controller: _telCtrl,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: 'มือถือ',
                              hintText: 'มือถือ',
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
                          color: Colors.blue[300],
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              userSignup();
                            }
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'สมัครสมาชิก',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.red[300],
                          onPressed: () {
                            // todo
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'ยกเลิก',
                                style: TextStyle(
                                  color: Colors.black,
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
