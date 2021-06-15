import 'package:app_memokid/social/delayed_animation.dart';
import 'package:app_memokid/social/home_page.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  @override
  _SocialPageState createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> with SingleTickerProviderStateMixin {
  final int delayedAmount = 100;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.pink[300];
    _scale = 1 - _controller.value;
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sriracha',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFFE082),
          ),
          backgroundColor: Color(0xFFFFF9C4),
          body: Center(
            child: Column(
              children: <Widget>[
                AvatarGlow(
                  endRadius: 90,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white24,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 2),
                  startDelay: Duration(seconds: 1),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                          child: Image.asset('assets/images/social/social.png',height: 120.0,),
//                        child: FlutterLogo(
//                          size: 50.0,
//                        ),
                        radius: 60.0,
                      )
                  ),
                ),
                DelayedAnimation(
                  child: Text(
                    "ยินดีต้อนรับ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: color),
                  ),
                  delay: delayedAmount + 600,
                ),
                DelayedAnimation(
                  child: Text(
                    "สู่สังคมออนไลน์",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: color),
                  ),
                  delay: delayedAmount + 1000,
                ),
                SizedBox(
                  height: 26.0,
                ),
                DelayedAnimation(
                  child: Text(
                    "แบ่งปันเรื่องราวของคูุณ",
                    style: TextStyle(fontSize: 18.0, color: color),
                  ),
                  delay: delayedAmount + 1500,
                ),
                DelayedAnimation(
                  child: Text(
                    "ให้กับเพื่อน และคนที่คุณรัก",
                    style: TextStyle(fontSize: 18.0, color: color),
                  ),
                  delay: delayedAmount + 2000,
                ),
                SizedBox(
                  height: 70.0,
                ),
                DelayedAnimation(
                  child: GestureDetector(
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Transform.scale(
                      scale: _scale,
                      child: _animatedButtonUI,
                    ),
                  ),
                  delay: delayedAmount + 2500,
                ),
                SizedBox(height: 50.0,),
                DelayedAnimation(
                  child: Text(
                    "ขอให้มีความสุขและสนุกกับโลกออนไลน์".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                  delay: delayedAmount + 3000,
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
    height: 60,
    width: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Colors.blue,
    ),
    child: Center(
      child: Text(
        'พร้อมสนุกกันเลย',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}