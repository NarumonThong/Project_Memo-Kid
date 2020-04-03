import 'package:app_memokid/custom_drawer/app_theme.dart';
import 'package:app_memokid/emergency/callphone_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart' ;



class EmergencyData extends StatefulWidget {
  @override
  _EmergencyDataState createState() => _EmergencyDataState();
}

class _EmergencyDataState extends State<EmergencyData> {


  String url = 'http://203.151.85.197/memo_kid/emergency/query.php';
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["emergency"];
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }

  final String phone1 = 'tel:191';
  final String phone2 = 'tel:199';
  final String phone3 = 'tel:1669';
  final String phone4 = 'tel:1554';
  final String phone5 = 'tel:1646';
  final String phone6 = 'tel:1155';
  final String phone7 = 'tel:1193';
  final String phone8 = 'tel:1543';
  final String phone9 = 'tel:1584';
  final String phone10 = 'tel:1146';
  final String phone11 = 'tel:1348';
  final String phone12 = 'tel:1690';
  final String phone13 = 'tel:1192';
  final String phone14 = 'tel:1196';
  final String phone15 = 'tel:1330';

  _callPhone1() async {
    if (await canLaunch(phone1)) {
      await launch(phone1);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone2() async {
    if (await canLaunch(phone2)) {
      await launch(phone2);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone3() async {
    if (await canLaunch(phone3)) {
      await launch(phone3);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone4() async {
    if (await canLaunch(phone4)) {
      await launch(phone4);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone5() async {
    if (await canLaunch(phone5)) {
      await launch(phone5);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone6() async {
    if (await canLaunch(phone6)) {
      await launch(phone6);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone7() async {
    if (await canLaunch(phone7)) {
      await launch(phone7);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone8() async {
    if (await canLaunch(phone8)) {
      await launch(phone8);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone9() async {
    if (await canLaunch(phone9)) {
      await launch(phone9);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone10() async {
    if (await canLaunch(phone10)) {
      await launch(phone10);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone11() async {
    if (await canLaunch(phone11)) {
      await launch(phone11);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone12() async {
    if (await canLaunch(phone12)) {
      await launch(phone12);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone13() async {
    if (await canLaunch(phone13)) {
      await launch(phone13);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone14() async {
    if (await canLaunch(phone14)) {
      await launch(phone14);
    } else {
      throw 'Could not Call Phone';
    }
  }
  _callPhone15() async {
    if (await canLaunch(phone15)) {
      await launch(phone15);
    } else {
      throw 'Could not Call Phone';
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("หมายเลยโทรศัพท์ฉุกเฉิน",style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: AppTheme.darkerText
        ),),
        backgroundColor: Colors.green[400],
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, i) {
          return Container(
            child: ListTile(
              title: new Text(data[i]["typeM"],style: TextStyle(
                fontSize: 14.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold
                ),
              ),
              subtitle: new Text(data[i]["numberM"],style: TextStyle(
                fontSize: 14.0,
                color: Colors.blue,
                ),
              ),
              trailing: new CircleAvatar(
                backgroundImage:
                new AssetImage('assets/images/emergency/phone.png'),
              ),
              onTap: (){

              debugPrint((data[i]["numberM"]).toString());
              if((data[i]["numberM"]).toString()== '191'){
                _callPhone1();
              }else if((data[i]["numberM"]).toString()== '199'){
                _callPhone2();
              }
              else if((data[i]["numberM"]).toString()== '1669'){
                _callPhone3();
              }
              else if((data[i]["numberM"]).toString()== '1554'){
                _callPhone4();
              }
              else if((data[i]["numberM"]).toString()== '1646'){
                _callPhone5();
              }
              else if((data[i]["numberM"]).toString()== '1155'){
                _callPhone6();
              }
              else if((data[i]["numberM"]).toString()== '1193'){
                _callPhone7();
              }
              else if((data[i]["numberM"]).toString()== '1543'){
                _callPhone8();
              }
              else if((data[i]["numberM"]).toString()== '1584'){
                _callPhone9();
              }
              else if((data[i]["numberM"]).toString()== '1146'){
                _callPhone10();
              }
              else if((data[i]["numberM"]).toString()== '1348'){
                _callPhone11();
              }
              else if((data[i]["numberM"]).toString()== '1690'){
                _callPhone12();
              }
              else if((data[i]["numberM"]).toString()== '1192'){
                _callPhone13();
              }
              else if((data[i]["numberM"]).toString()== '1196'){
                _callPhone14();
              }else{
                _callPhone15();
              }

              },
            ),
            decoration: new BoxDecoration(
              border: new Border(
                bottom: new BorderSide(style: BorderStyle.solid, color: Colors.black26),
              ),
              color: new Color(0xFFFAFAFA),
            ),
          );
        },
      ),
    );
  }
}
