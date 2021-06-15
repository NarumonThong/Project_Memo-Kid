import 'package:app_memokid/social/help_page.dart';
import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'feed_page.dart';
import 'first_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  final _pageOption = [
    FirstPage(),
    ChatPage(),
    FeedPage(),
    HelpPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItem,
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('หน้าหลัก'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            title: Text('แชท'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('ไทม์ไลน์'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('ช่วยเหลือ'),
          ),
        ],
      ),
    );
  }
}

