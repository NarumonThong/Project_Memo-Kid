import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class WeightPage extends StatefulWidget {
  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  final List<String> titles = [
    "น้ำหนักตามเกณฑ์อายุชาย",
    "น้ำหนักตามเกณฑ์อายุหญิง",
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
                imageUrl: "assets/images/diary/aa.png",
              );
            },
          ),
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
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 18.0),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.indigo, fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 30.0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 40),
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