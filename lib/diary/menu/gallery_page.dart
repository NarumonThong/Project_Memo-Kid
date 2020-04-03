import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  final String title;

  GalleryPage({this.title}) : super();

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery App"),
        backgroundColor: Color(0xFFFFE082),
      ),
      backgroundColor: Color(0xFFFFF9C4),
    );
  }
}
