import 'package:app_memokid/media/music/screens/home_screen.dart';
import 'package:app_memokid/media/video/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MediaPage extends StatefulWidget {
  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  final List<String> titles = [
    "Music",
    "Video",
  ];
  final List<String> subtitles = [
    "ดนตรีไม่เพียงแต่สร้างความเพลิดเพลินให้กับลูกๆ ของคุณ แต่ยังช่วยเสริมสร้างพัฒนาการทางร่างกายที่แข็งแรงและจิตใจที่เบิกบาน",
    "การอ่านนิทานหรือฟังนิทานช่วยเสริมสร้างพัฒนาการที่ดีให้แก่ลูกในครรภ์ไม่ว่าจะเป็นด้านสมองและด้านร่างกาย จะได้รับการพัฒนาที่ดีจากการอฟังนิทาน และได้รับความรักผ่านเส้นเสียงและความรู้สึกของคุณแม่",
  ];
  final List<Color> colors = [
    Colors.amber[100],
    Colors.lightGreen[200],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
      ),
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.red,
                activeSize: 20.0,
              ),
            ),
            itemCount: 2,
            itemBuilder: (context, index) {
              return IntroItem(
                title: titles[index],
                subtitle: subtitles[index],
                bg: colors[index],
                imageUrl: "assets/images/media/${index + 1}.jpg",
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              child: Text("Music"),
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context)=>new HomeScreen(),
                    )
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FlatButton(
              child: Text("video"),
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context)=>new HomeScreen2(),
                    )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color bg;
  final String imageUrl;

  const IntroItem(
      {Key key, @required this.title, this.subtitle, this.bg, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 20.0),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 40.0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Material(
                      elevation: 4.0,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}