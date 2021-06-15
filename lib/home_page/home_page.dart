import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sriracha',
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 40,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              labelColor: Colors.deepOrange,
              unselectedLabelColor: Colors.blue,
              indicatorColor: Colors.deepOrange,
              tabs: [
                Tab(text: " 1",),
                Tab(text: " 2",),
                Tab(text: " 3",),
                Tab(text: " 4",),
                Tab(text: " 5",),
                Tab(text: " 6",),
                Tab(text: " 7",),
                Tab(text: " 8",),
                Tab(text: " 9",),
                Tab(text: " 10",),
                Tab(text: " 11",),
                Tab(text: " 12",),
                Tab(text: " 13",),
                Tab(text: " 14",),
                Tab(text: " 15",),
                Tab(text: " 16",),
                Tab(text: " 17",),
                Tab(text: " 18",),
                Tab(text: " 19",),
                Tab(text: " 20",),
                Tab(text: " 21",),
                Tab(text: " 22",),
                Tab(text: " 23",),
                Tab(text: " 24",),
                Tab(text: " 25",),
                Tab(text: " 26",),
                Tab(text: " 27",),
                Tab(text: " 28",),
                Tab(text: " 29",),
                Tab(text: " 30",),
                Tab(text: " 31",),
                Tab(text: " 32",),
                Tab(text: " 33",),
                Tab(text: " 34",),
                Tab(text: " 35",),
                Tab(text: " 36",),
                Tab(text: " 37",),
                Tab(text: " 38",),
                Tab(text: " 39",),
                Tab(text: " 40",),
              ],
              isScrollable: true,
            ),
            centerTitle: true,
            backgroundColor: Colors.amberAccent[100],
          ),
          backgroundColor: Color(0xFFFFF9C4),
          body: TabBarView(
            children: [
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/1.jpg'),
                  DraggableScrollableSheet(
                    initialChildSize: 0.7,
                    minChildSize: 0.2,
                    maxChildSize: 0.7,
                    builder: (context, scrollController){
                      return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 1", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold, ),),
                                        ),
                                        Text(
                                          'อยู่ในขั้นตอนการปฏิสนธิคุณแม่จึงไม่ทราบว่าเกิดการตั้งครรภ์ เพราะฉะนั้นในช่วงอายุครรภ์1สัปดาห์ จึงยังไม่มีการนัดตรวจใดๆ แต่สำหรัณแม่ที่วางแผนการตั้งครรภ์ไว้อยู่ก่อนแล้ว แพทย์จะให้รับประทานโฟลิคต่อเนื่องตั้งแต่ก่อนตั้งครรภ์ ',
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text('ตามหลักการแล้วคุณควรทำสุขภาพให้แข็งแรงที่สุดเท่าที่จะเป็นไปได้สำหรับการตั้งครรภ์และการเป็นคุณแม่ในอนาคต ควรหยุดสูบบุหรี่ หยุดดื่มแอลกอฮอล์มากเกินไป และหลีกเลี่ยงยาที่ไม่จำเป็น คุณควรย้ายหรือวางแผนย้ายออกจากสถานที่ทำงานที่อาจก่อให้เกิดอันตรายต่างๆ ถ้าคุณหรือญาติใกล้ชิดในครอบครัวมีโรคประจำตัวให้ปรึกษาแพย์ถึงความเสี่ยงของโรคที่จะเกิดขึ้นเมื่อตั้งครรภ์'
                                        ,style: TextStyle(color: Colors.indigo),),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/1.png',height: 80.0,),

                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                    }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/2.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 2", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ในตอนนี้เพศของลูกถูกกำหนดด้วยโครโมโซม 2 แท่ง จาก 46 แท่ง ซึ่งประกอบกันเป็นลักษณะมางพันธุกรรมของลูก โครโมโซมทั้งสองมาจากไข่และอสุจิฝ่ายละ 1 แท่ง ไข่มีโครโมโซมเอกซ์ แต่อสุจิมีโครโมโซมเอกซ์หรือวาย ถ้าอสุจิที่มีโครโมโซมเอกซ์ปฏิสนธกับไข่ คุณจะได้ลูกสาว ถ้าอสุจิมีโครโมโซมวาย คุณจะได้ลูกชาย เพราะฉะนั้นพ่อจึงเป็นคนกำหนดเพศของลูก',
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text('การตกไข่มักเกิดขึ้นก่อนมีประจำเดือนครั้งต่อไป 14 วัน ดังนั้นถ้าคุณมีรอบเดือนประจำเดือน 28 วัน วันที่ 14 คือวันที่น่าจะตั้งครรภ์มากที่สุดในวันนี้หรือวันอื่นที่ไข่ตก (ตามระยะเวลาของรอบประจำเดือนของคุณ) '
                                            'คุณควรเริ่มมีเพศสัมพันธ์กับคู่ของคุณอย่างสม่ำเสมอ ส่วนลำตัวของอสุจิ "ผู้โชคดี" จะสลายนิวเคลียสที่มีสารพันธุกรรมของคู่ของคุณจะหลอมรวมกันกับนิวเคลียสของไข่ซึ่งมีสารพันธุกรรมของคุณอยู่เนื่องจากการตกไข่มักเกิดขึ้นประมาณวันที่ 14 '
                                            'ถ้าประจำเดือนขาดไปหลังจากนั้น 2 สัปดาห์มักบ่งชี้ถึงการตั้งครรภ์ ตามปกตอแล้วการตั้งครรภ์จะนับจากวันแรกของรอบเดือนครั้งสุดท้ายของคุณอย่างไรก็ตามถ้ากล่าวว่าคุณตั้งครรภ์ได้ 4 สัปดาห์ (นั่นคือหลังจากรอบประจำเดือนครั้งสุดท้าย 4 สัปดาห์) อายุของทารกในครรภ์และระยะเวลาตั้งครรภ์จริงจะเท่ากับ 2 สัปดาห์เท่านั้น',
                                        style: TextStyle(color: Colors.indigo),),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/2.png',height: 80.0,),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/3.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 3", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'หลังจากไข่ปฏิสนธิแล้วจะเกิดการตั้งครรภ์และเซลล์จะเริ่มเพิ่มจำนวนเป็นทวีคูณในอัตราเร็วมาก ในเวลาเพียง 7 วัน เซลล์เพียงเซลล์เดียวจะแปรรูปไปเป็นก้อนกลมหลายร้อยเซลล์ คุณอาจจะมองโครงสร้างไม่ออกนักแม้จะดูด้วยกล้องจุลทรรศน์ '
                                              'แต่เซลล์ก็กำลังจัดกลุ่มในลักษณะที่กำหนดไว้แล้ว บางเซลล์ถูกกำหนดให้กลายเป็นเอ็มบริโอ เซลล์อื่นๆ เป็นโครงสร้างสนันสนุน (วิลไลและรก) ที่จะเลี้ยงดูเอ็มบริโอ สิ่งเหล่านี้เกิดขึ้นได้อย่างไรยังคงเป็นปริศนาอยู่มาก '
                                              'แต่เราทราบว่าเกี่ยวข้องกับปฏิสัมพันธ์ซับซ้อนเป็นชุดบลาสโทซิสต์เป็นก้อนกลมของเซลล์ที่มีลักษณะกลวงและมีจองเหลวอยู่ภายใน จะขุดเข้าไปในส่วนบนของมดลูกในช่วงระหว่างวันที่ 4 กับ 7 แม้ว่าอาจจะฝังคัวอย่างไม่มั่นคงจนกว่าจะถึงวันที่ 10 '
                                              'เซลล์จากชั้นนอกของบลาสโทซิสต์จะยื่นส่วนคล้ายรากเรียกว่า วิลไล เข้าไปในเยื่อบุมดลูกวิลไลทำให้มีการแลกเปลี่ยนสารอาหารและของเสียระหว่างกระแสเลือดของคุณกับเอ็มบริโอที่กำลังพัฒนาในที่สุดการเชื่อมต่อนี้จะเจริญไปเป็นรกซึ่งเป็นอวัยวะที่จะให้อาหาร'
                                              'และปกป้องลูกที่กำลังจะเติบโตต่อไปอีกหลายเดือนข้างหน้า ขณะเดียวกันชั้นบุมดลูกจะเติบโตปกคลุมและห่อหุ้มบลาสโทซสต์ไว้ภายใน',
                                          style: TextStyle(color: Colors.brown),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text('ประมาณ 7 วันหลังการปฏิสนธิ มอรูลาซึ่งเป็นกลุ่มเซลล์ที่เป็นก้อนกลมตันจะฝังตัวในชั้นบุมดลูก (เยื่อบุมดลูก) ของคุณ เมื่อกลุ่มเซลล์นี้เจริญขึ้นจะกลายเป็นบลาสโทซิสต์ซึ่งหลั่งสารที่กระตุ้นให้เกิดการเปลี่ยนแปลงอย่างมากในร่างกายของคุณ รวมถึงระงับรอบประจำเดือนด้วย',
                                        style: TextStyle(color: Colors.indigo),),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/3.png', height: 80.0,),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/4.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 4", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกเป็นบลาสโทซิสต์ซึ่งประกอบด้วยเซลล์หลายร้อยเซลล์เดินทางมาถึงรก แล้วเริ่มเกาะติดกับผนังมดลูก เซลล์เติบโตไปเป็นคอริโอนิกวิลไลซึ่งภายหลังจะกลายเป็นรก เอนไซม์ที่ปลดปล่อยออกมาจะเจาะชั้นบุมดลูก ทำให้มีการทำลายเนื้อเยื่อและให้เม็ดเลือดที่เป็นตัวให้อาหารแก่คอริโอนิกวิลไล '
                                              'กระบวนการฝังตัวใช้เวลาประมาณ 13 วัน เมื่อบลาสโทซิสต์ฝังตัวแล้ว เซลล์ของบลาสโทซิสต์จะเริ่มแบ่งเป็นชั้นๆ ชั้นบนกลายเป็นเอมบริโอและโพรงน้ำคร่ำ ส่วนชั้นล่างกลายเป็นถุงไข่แดง ถุงไข่แดงจะผลิดเม็ดเลือดสำหรับเอมบริโอจนกระทั่งไขกระดูกของเอ็มบริโอเองพร้อมที่จะรับช่วงต่อเอ็มบริโอจะแบ่งต่อไปเป็น 3 ชั้น',
                                        style: TextStyle(color: Colors.brown),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text('ถ้าคุณสงสัยว่าอาจตั้งครรภ์ การทดสอบเลือดเท่านั้นที่จะให้ผลได้ถูกต้องที่สุดในเวลานี้ เนื่องจากชุดทดสอบการตั้งครรภ์สำหรับทดสอบที่บ้านนั้นจะไม่สามารถตรวจสอบฮอร์โมนในการตั้งครรภ์ที่ชื่อ ฮิวแมน คอริโอนิก โกนาโดโทรพิน (เอชซีจี) ในปริมาณน้อยๆ ได้ ในเวลานี้รกได้หลั่งฮอร์โมนนี้เข้าสู่กระแสเลือดของคุณแล้ว'
                                            ' ในขณะที่รอดูว่าประจำเดือนจะมาหรือไม่ คุณอาจมีอาการแสดงของการตั้งครรภ์ที่คล้ายกับอาการแสดงก่อนมีประจำเดือนบางอย่าง เช่น พะอืดพะอม คัดเต้านม',
                                        style: TextStyle(color: Colors.indigo),),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/4.png',height: 80.0,),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/5.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 5", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกเป็นเอมบริโอ ณ อายุครรภ์ 3 สัปดาห์ ซึ่งมีรูปร่างเกือบเหมือนท่อนเหล็กยกน้ำหนัก มีร่องตามหลังซึ่งจะปิดสนิทกลายเป็นท่อของระบบประสาท เกิดเนื้อเยื่อพิเศษที่เรียกว่า ปล้อง ขึ้นบนทั้ง 2 ด้านของท่อนี้ แล้วจะกลายเป็นกล้ามเนื้อและโครงสร้างอื่น นอกจากนี้จะเริ่มเกิดรอยโป่งขึ้นเพื่อเป็นที่อยู่ของหัวใจทารก และหลอดเลือดขั้นต้นจะเติบโตมาอยู่ในตำแหน่งที่ควร ในขั้นนี้ถุงไข่แดง (ไม่ใช่รก) จะให้สารอาหารและผลิตเซลล์สืบพันธุ์และเลืือด',
                                        style: TextStyle(color: Colors.brown),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ในเวลานี้ชุดทดสอบการตั้งครรภ์ตามร้านขายยาอาจจะสามารถยืนยันได้ว่าคุณตั้งครรภ์ ซึ่งคุณอาจจะสงสัยอยู่แล้วหลังจากประจำเดือนขาด ถ้าผลการทดสอบเป็นลบคุรอาจจะทดสอบซ้ำหลังจากนั้น 2-3 วัน โดยเฉพาะถ้าประจำเดือนยังไม่มา ถ้าการทดสอบเป็นบวก ให้คิดว่าจะบอกคนอื่นในเวลานี้เลยหรือรอจนกวระทั่งพ้นไตรมาสที่ 1 (หลังจากสัปดาห์ที่ 12) เมื่อมีโอกาสเกิดภาวะแทรกซ้อนน้อยลง เต้านมของคุณอาจรูสึกเต่งตึงและกดเจ็บง่ายขึ้น '
                                              'และคุณอาจรู้สึกล้า ถ้ารู้สึกคลื่นไส้เล็กน้อยโดยเฉพาะในเวลาเช้า ให้ลองรับประทานอาหารมื้อเล็กๆ ที่มีรสชาติอ่อนลงเพื่อดูว่าจะสบายท้องหรือไม่ คุณอาจจะไม่รู้สึกว่ามีอะไรแตกต่างไปก็ได้ แต่ถ้าเคยรู้สึกแล้วอาการที่เคยเป็นนั้นหายไปคุณควรปรึกษาแพทย์หรือผู้ผดุงครรภ์ เนื่องจากอาจเป็นอาการของภาวะแทรกซ้อนในการตั้งครรภ์ '
                                              'คุณควรใส่ใจกับสิ่งใดก็ตามที่อาจทำให้ทารกต้องเสี่ยง เช่น การดื่มแอลกอฮอล์มากเกินไป',
                                          style: TextStyle(color: Colors.indigo),
                                        ),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/5.png',height: 80.0,),

                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/6.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 6", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกมีความยาวประมาณ 2-4 มม. และถุงครรภ์มีปริมาตรประมาณ 2.5 มล. แม้ว่าหัวใจของลูกจะเป็นเพียงท่อ แต่ก็เริ่มเต้นแล้วท่อของระบบประสาทกำลังเปิดเพื่อเตรียมพร้อมสำหรับพัฒนาการของไขสันหลัง สมองกำลังเติบโตอยู่ภายในศีรษะ สารสีกำลังเติมเต็มถุงสายตาซึ่งเป็นลูกกลมตื้นๆอยูข้างศีรษะทั้ง 2 ข้าง '
                                              'ทางเดินอาหารขั้นตอนเริ่มเป็นรูปเป็นร่างพร้อมกับช่องท้องและช่องอก ปุ่มแขนและขาก็ได้พัฒนาขึ้นเช่นกันแม้ว่ายังเห็นหางอย่างชัดเจนอยู่บนร่างกายที่โค้งงอ ตับ ตับอ่อน ต่อมไทรอยด์ และปอดเริ่มพัฒนา รูจมูกแยกกัน คอและขากรรไกรก็กำลังพัฒนาขึ้นเช่นกัน'
                                            ,style: TextStyle(color: Colors.brown),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text('คุณอาจไปพบแพทย์ในสัปดาห์นี้ก็ได้เพื่อยืนยันว่าตั้งครรภ์ (โดยการทดสอบเลือด) และเพื่อทราบวันคลอดโดยประมาณ (EDD) คำนวณวันคลอดนี้ได้โดยนับจากวันแรกที่มีประจำเดือนครั้งสุดท้ายไป 40 สัปดาห์ คุณอาจพบความเปลี่ยนแปลงมากขึ้นโดยเต้านม หัวนมอาจดูเด่นขึ้น  ผิวรอบหัวนมอาจมีสีเข้มขึ้นและอาจเห็นหลอดเลือดดำสีออกน้ำเงินใต้ผิวหนังได้'
                                          ,style: TextStyle(color: Colors.indigo),
                                        ),

                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/6.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                children: <Widget>[
                  Image.asset('assets/images/fourty/7.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 7", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวอยู่ที่ประมาณ 4-5 มม. ลักษณะบนใบหน้าเริ่มปรากฏ ตาเป็นแผ่นที่มีสารสีอยู่บนศีรษะแต่ละข้าง รูจมูกเป็นช่องเปิดขนาดเล็ก ปากเป็นรอยเว้า หูกำลังพัฒนาอยู่บนด้านข้างของคอทั้ง 2 ด้าน ศีรษะขรุขระใหญ่กว่าส่วนอื่นๆของร่างกายมาก '
                                              'ปุ่มแขนและขากำลังยื่นออกมามากขึ้น เห็นข้อศอก ไหล่ เท้าและมือรูปร่างเหมือนไม้พาย สมองได้แบ่ออกเป็นส่วนๆ แล้วหัวใจเต้นอยู่ที่  150 ครั้งต่อนาที (เร็วเป็น 2 เท่าของคุณ) เซลล์กล้ามเนื้อกำลงัเติบโตเพื่อเตรียมพร้อมเคลื่อนไหว หางกำลังค่อยๆหายไป'
                                              'ในปอดนั้นทางเดินอากาศ (หลอดลม) กำลังเป็นรูปเป็นร่าง ลำไส้กำลังพัฒนา ลำไส้ส่วนหนึ่งยื่นเข้าไปในสายสะดือ อวัยวะเพศภายในเกือบสมบรูณ์ สายสะดือก็กำลังเติบโดตไปพร้อมกับรกที่เจริญขึ้น คอและขากรรไกรก็กำลังพัฒนาขึ้น',
                                            style: TextStyle(color: Colors.brown)
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'คุณอาจรู้สึกไม่สบายเต้านม ได้แก่ รู้สึกชาและหนักเกิดจากการกระตุ้นต่อมผลิตน้ำนม นอกจากนี้ยังรู้สึกหงุดหงิดและแทบทุกคนจะเริ่มรู้สึกเหนื่อยง่ายกว่าเดิมทั้งที่ไม่ได้ออกกำลังมาก เป็นผลจากระดับโพรเจสเทอโรนที่สูงขึ้น แม้ว่าจะเป็นอาการที่เกิดขึ้นในช่วงแรก แต่คุณก็จำเป็นต้องหาเวลาในการพักผ่อนด้วย ค'
                                              'ุณอาจเริ่มถ่ายปัสสาวะบ่อยขึ้นและอาจสังเกตได้ว่ามีน้ำลายมาก มีเมือกออกมาจากช่องคลอดมากขึ้นและมีอาการคัดปลายจมูก การเปลี่ยนแปลงภายในก็กำลังเกิดขึ้นด้วยจากอัตราหัวใจของคุณที่เต้นเพิ่มขึ้นอย่างมาก และอัตราเมแทบอลิซึมที่เพิ่มขึ้นแต่อาจไม่รู้สึกก็ได้'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/7.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/images/fourty/8.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 8", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความสูงประมาณ 1.6 ซม.  ตา ปาก และจมูกจะเริ่มชัดเจนยิ่งขึ้น ในระยะนี้ ปุ่มฟันน้ำนมเริ่มเป็นรูปร่าง เซลล์กระดูกก็เริ่มเป็นรูปร่างขึ้นมาแทนที่กระดูกอ่อน ข้อต่อเล็กๆ เริ่มเจริญเติบโตขึ้น อวัยวะทุกส่วนจะเริ่มเข้าที่ และลูกจะเริ่มมีลายนิ้วมือที่เป็นลักษณะเฉพาะของตนเองในระยะนี้ '
                                              'ขณะที่คุณตั้งครรภ์ มีแนวโน้มมากขึ้นที่จะเกิดเชื้อราได้ หากคุณแม่มีอาการดังกล่าว ทางที่ดีที่สุดก็คือให้หลีกเลี่ยงการใช้สบู่หรือเจลอาบน้ำที่มีส่วนผสมของน้ำหอม และให้สวมกางเกงชั้นในที่เป็นผ้าฝ้ายและเสื้อผ้าที่ไม่รัดจนเกินไป รวมทั้งปรึกษาสูติแพทย์ก่อนใช้ยารักษาใดๆ'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'คุณแม่หลายท่านมักรู้สึกไม่สบายในระยะแรกของการตั้งครรภ์ โดยเฉพาะอาการคลื่นไส้ ที่อาจเห็นได้ชัดขึ้นในตอนเช้า ช่วงเวลานี้และ 2-3 สัปดาห์ถัดจากนี้นับเป็นช่วงที่แย่ที่สุด แต่ภายในสัปดาห์ที่ 14  คุณแม่ส่วนใหญ่จะหายจากอาการนี้ '
                                              'และจะเริ่มเพลิดเพลินกับการทานอาหารที่ดีต่อสุขภาพของคุณแม่ตั้งครรภ์  อย่างไรก็ตาม คุณแม่บางท่านอาจมีอาการแพ้ท้องอีกสักระยะหนึ่ง ซึ่งอาจจะเป็นๆ หายๆ ตลอดช่วงตั้งครรภ์ ทำให้คุณแม่รู้สึกไม่สบายตัวเท่าไรนัก หากเกิดอาการแพ้ท้อง คุณแม่สามารถลองทำตามวิธีต่อไปนี้ '
                                              'เพื่อบรรเทาอาการลงได้ลองเคี้ยวแครกเกอร์หรือขนมปังกรอบทีละนิดก่อนลุกจากที่นอนในตอนเช้าลองทานอาหารทีละน้อยแต่บ่อยๆ เพื่อไม่ให้ท้องว่าง แม้ว่าจะทานอาหารไม่ลง แต่สิ่งสำคัญเป็นอย่างยิ่งก็คือคุณแม่ต้องพยายามดื่มน้ำ แต่ถ้ารู้สึกดื่มลำบาก ให้ลองอมน้ำแข็ง ทาน   '
                                              'ไอศกรีมแบบแท่งหรือจิบน้ำผลไม้แทน ลองทานขิง เพราะได้รับการพิสูจน์แล้วว่าได้ผลกับคุณแม่หลายๆ ท่าน โดยอาจจะลองดื่มน้ำขิงหรือทานขนมปังกรอบรสขิง ชาขิง หรือขิงผงชงในน้ำเดือ'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/8.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/9.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 9", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 22-30 มม. และจะหนักประมาณ 4 ก. ขณะนี้เอมบริโอดูเหมือนทารกมากขึ้น ศีรษะใหญ่ขึ้นหางหายไป หลังตรงขึ้น จมูกและขากรรไกรสมบรูณ์ เห็นคอได้ชัดขึ้น มีเปลือกตาที่มีลักษณะเป็นเยื่อปกป้องตา ผิหนังหนาขึ้นและปุ่มรากขนกำลังพัฒนา '
                                              'จนถึงเวลานี้นิ้วมือแยกออกจากกันและเกือบสมบรูณ์แล้ว แขนและขากำลังยืดยาว มีข้อเข่าและข้อศอก ซี่โครงที่กำลังปิดเพื่อปกป้องหัวใจ ลำไส้ใหญ่กำลังเริ่มย้ายกลับเข้าไปในช่องท้องซึ่งขณะนี้ใหญ่พอให้ลำไส้อยู่ได้แล้ว'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'รูปร่างของคุณอาจจะยังไม่แสดงให้เห็นว่าคุณตั้งครรภ์อย่างไรก็ตามขณะนี้ฮอร์โมนของการตั้งครรภ์ชื่อ ฮิวแมนคอริโอนิก โกนาโดโทรพิน (เอชซีจี) อยู่ในระดับสูงสุดและสังเกตเห็นการเปลี่ยนแปลงบางประการ เช่น ผิวหน้าเรียบขึ้น และเปล่งปลั่งขึ้น '
                                              'แม้ว่าอาจมีสิวผุดขึ้นมาได้คุณอาจไม่จำเป็นต้องสระผมบ่อยนักเนื่องจากผมมักจะมันน้อยลง นอกจากนี้เต้านมอาจขยายใหญ่ขึ้นหรือรู้สึกกดเจ็บเล็กน้อย บางครั้งคุณอาจสังเกตพบเมือกออกมาจากช่องคลอดในปริมาณต่างๆ กัน อย่างไรก็ตามนี่เป็นเรื่องธรรมชาติและไม่น่ากังวล '
                                              'แต่ถ้าเมือกข้นมากและคันหรือมีกลิ่นแปลก แจ้งให้แพทย์ทราบเนืองจากอาจเป็นการติดเชื้อที่ช่องคลอดแบบไม่รุนแรงก็ได้'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/9.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),       //9

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/10.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 10", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกมีความยาวประมาณ 37-42 มม. และจะหนักประมาณ 5 ก. ขณะนี้เรียกว่า ทารกในครรภ์ ร่างกายจัดว่าสมบรูณ์แล้ว สมองเติบโตจนมีขนาดใหญ่ มองเห็นตาและจมูกอย่างชัดเจน เปลือกตาเชื่อมให้ตาปิดสนิทโดยจะไม่ลืมตาจนกว่าจะถึงสัปดาห์ที่ 27 '
                                              'ภายในเหงือกกำลังมีการสร้างหน่อฟัน 20 หน่อ สำหรับฟันน้ำนม บนลิ้นก็กำลังสร้างปุ่มรับรส มีการสร้างข้อส่วนใหญ่รวมถึงข้อมือและข้อเท้า นิ้วมือและนิ้วเท้าที่แยกออกจากกันทำให้สามารถขยับได้มาก'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ระดับฮอร์โมนที่สูงขึ้นจะงส่งผลทั้งด้านอารมณ์และด้านร่างกาย เป็นเรื่องปกติมากที่คุณจะตกใจง่ายหรือมีพื้นอารมณ์เปลี่ยนแปลงง่ายอย่างน่าประหลาดใจ ตั้งแต่รู้สึกร่าเริงไปจึงถึงร้องไห้ง่าย การเปลี่ยนแปลงทางกายภาพรวมถึงการมีน้ำหนักตัวที่เพิ่มขึ้น '
                                              'เหงือกอาจนุ่มขึ้นและต่อมไทรอยด์บวมเล็กน้อย ให้แปรงฟันอย่างน้อยวันละ 2 ครั้ง และใช้ไหมขัดฟันเป็นประจำเนื่องจากขณะนี้ฟันของคุณไวต่อแบคทีเรียและคราบจุลินทรีย์มากขึ้น นัดตรวจทันตกรรมโดยแจ้งให้ทันตแพทย์ทราบว่าคุณตั้งครรภ์เพื่อหลีกเลี่ยงการเอกซเรย์อีกเพียง '
                                              '2 สัปดาห์จะสิ้นสุดไตรมาสที 1 แล้ว คุณสามารถคาดการณ์ไว้ล่วงหน้าได้เลยว่าอาการที่เคยมีต่างๆ นั้นลดลง เช่น อาการแพ้ท้อง เป็นต้น'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/10.png',height: 80.0),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/11.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 11", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 44-60 มม. และจะหนักประมาณ 8 ก. จะมีการสร้างอวัยวะสำคัญทั้งหมดแล้ว ได้แก่ สมอง ปอด ตับ ไต และลำไส้ และกำลังเพิ่มปริมาตรขึ้น หูชั้นในจะสร้างเสร็จภายในสัปดาห์นี้ ตาซึ่งได้เคลื่อนที่มาตรงกลางใบหน้ากำลังพัฒนาม่านตาขึ้น จากเวลานี้จนถึงประมาณสัปดาห์ที่ 20 '
                                              'จะเติบโตอย่างรวดเร็วขึ้น หลอดเลือดของรกเพิ่มจำนวนขึ้นเพื่อให้สารอาหารจำเป็น ผมและเล็บกำลังงอก น้ำคร่ำเริ่มสะสมในเวลาเดียวกับที่ไตเริ่มทำงาน ในช่องท้องนั้นลำไส้กำลังพัฒนา ส่วนหนึ่งของลำไส้ยังคงยื่นเข้าไปในสายสะดือ (เรียกว่า การเลื่อนผิดปกติของอวัยวะตามสรีรวิทยา) แต่จะกลับเข้าไปในช่องท้องในสัปดาห์หน้า'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ขณะนี้ร่างกายของคุณแม่กำลังเผาผลาญแคลอรีด้วยอัตราเร็วกว่าช่วงก่อนตั้งครรภ์ โดยอัตราเมแทบอลิซึมพื้นฐานได้เพิ่มขึ้นถึงร้อยละ 25 ปริมาณเลือดที่สูบฉีดไปทั่วร่างกายจะเพิ่มขึ้นด้วยซึ่งอาจทำให้คุณรู้สึกอุ่นกว่าปกติอย่างมาก และอาจมีเหงื่อออกมากขึ้น ดังนั้นให้ดื่มน้ำมากๆ ถ้าคุณยังไม่ได้ตรวจครรภ์ครั้งแรก '
                                              'ให้จดคำถามที่ต้องการถามเรื่องการดูแลครรภ์และการเจริญเติบโตของลูกไว้ ตรวจสอบประวัติทางการแพทย์ของครอบครัวเนื่องจากแพทย์หรือผู้ผดุงครรภ์จะต้องการทราบทุกอย่างที่อาจมีผลต่อลูกได้'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/11.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/12.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 12", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 61 มม. และจะหนักประมาณ 9-13 ก. การเติบโตของทารกในครรภ์ยังเป็นไปอย่างรวดเร็วขนาเพิ่มขึ้นเท่าตัวในช่วง 3 สัปดาห์ที่ผ่านมา ใบหน้าดูเหมือรชนคนมากขึ้น อวัยวะยังเติบโตต่อ ผมและเล็บกำลังงอก กระดูกกำลังแข็.ขึ้นเนื่องจากมีแคลเซียมเสริม '
                                              'ขณะนี้ความเสี่ยงจากความผิดปกติแต่กำเนิดจะน้อยลงมาก ต่อมใต้สมอง ณ ฐานสมอง กำลังเริ่มผลิตฮอร์โมน กำลังมีการสร้างเส้นเสียง ระบบย่อยอาหารสามารถบีบตัวไล่อาหารไปตามลำไส้และดูดซึมกลูโคสได้ อวัยวะเพศเริ่มเป็นรูปเป็นร่างแต่เฉพาะผู้เชี่ยวชาญจึงจะสามารถยืนยันเพศของลูกได้'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ขณะนี้มดลูกของคุณแม่ได้โตขึ้นจนกว้างประมาณ 10 ซม. ใหญ่เกินกว่าจะอยูในอุ้งเชิงกราน และเริ่มเคลื่อนขึ้นไปยังช่องท้อง ดังนั้นถ้าก่อนหน้านี้คุณต้องถ่ายปัสสาวะบ่อยขึ้น ช่วงนี้จะเริ่มบรรเทาลง แพทย์จะทำนายวันคลอดโดยประมาณได้แม่นยำขึ้นจากความยาวจากศีรษะถึงก้นของลูกซึ่งจะวัดเมื่อทำการสแกนด้วยคลื่อนเสียงความถี่สูง '
                                              'แม้ว่าคุณจะไปรู้สึกอะไร แต่หัวใจของคุณอาจเริ่มเต้นเร็วขึ้นได้ 2-3 ครั้งต่อนาที เพื่อรับมือกับปริมาตรที่เพิ่มขึ้นของเลือดซึ่งไหลเวียนอยู๋ในร่างกายของคุณ อาการแพ้ท้องต่างๆ จะหายเป็นปกติหรือในอีกไม่ช้าคุฯอาจได้รับการตรวจครรภ์เป็นครั้งแรกหรือได้รับการทดสอบบางชนิดในสัปดาห์นี้ ให้เตรียมตัวเลย'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/12.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/13.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 13", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 75 มม. และจะหนักประมาณ 20 ก.มีการสร้างอวัยวะและโครงสร้างสำคัญทั้งหมดแล้วแต่ยังไม่เจริญเต็มที่ ลำไส้ได้เคลื่อนที่เข้าไปในตัวมากขึ้นตับเริ่มหลั่งน้ำดีและตับอ่อนเริ่มผลิตอินซูลิน กำลังมีการเคลื่อนไหวอย่างสม่ำเสมอด้วยแม้ว่าคุณจะไม่สามารถรู้สึกได้ '
                                              'เนื้อเยื่อกระดูกกำลังปรากฏ รีเฟล็กซ์ดีขึ้นเนื่องจากเซลล์ประสาทเพิ่มจำนวนและพัฒนาการทางประสาทยังคงก้าวหน้าไปอย่างรวดเร็ว ถ้าฝ่ามือเผอิญสัมผัสกับสายสะดือ นิ้งมือจะกำรอบสายสะดือลูกได้พัฒนานิ้วหัวแม่มือซึ่งแตกต่างจากนิ้วอื่นขึ้นมาเป็นเครื่องมือสำคัญยิ่งสำหรับคนทุกคนเนื่องจากทำให้เราหยิบ ถือ และจัดการสิ่งต่างๆได้'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ขณะนี้เป็นไตรมาสที่ 2 ระยะที่ดีที่สุดของการตั้งครรภ์กำลังจะเริ่มต้นขึ้น คุณอาจพบว่าตนเองหิวมากขึ้น เริ่มอยากอาหารบางชนิดหรือเลิดอาหารบางชนิด คุณอาจจะเริ่มรู้ึกกระปรี้กระเปร่าขึ้นเนื่องจากปัญหาในช่วงไตรมาสที่ 1 เช่น อาการคลื่อนไส้ ความล้าทุเลาลง ขณะนี้รกผลิตฮอร์โมนตัวหลัก คือ โพรเจสเทอโรนและเอสไทรออล ซึ่งรังไข่ได้ผลิตก่อนหน้านี้ '
                                              'ฮอร์โมนเหล่านี้มีบทบาทสำคัญยิ่งในการคงสภาวะครรภ์ และชักนำให้เกิดการเปลี่ยนแปลงที่จำเป็นของร่างกาย ถ้าคุณยังไม่ได้ประกาศให้ผู้อื่นทราบเรื่องการตั้งครรภ์ก็ประกาศได้ด้วยความมั่นใจในเวลานี้ เนื่องจากความเสี่ยงต่อภาวะแทรกซ้อนลดน้อยลงมากแล้ว'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/13.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/14.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 14", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยางประมาณ 80-93 มม. และจะหนักเประมาณ 25 ก. ในเวลานี้นอกจากจะเคลื่อนไหวมืออย่างนุ่มนวลขึ้นซับซ้อนขึ้น เหล่ตาและแสดงสีหน้าต่างๆ ได้แล้วยัง "ดูด" นิ้วหัวแม่มือได้ด้วย ระบบประสาทกำลังทำงานและ "ฝึก" '
                                              'จังหวะการหายใจอยู่ บอกเพศได้ง่ายขึ้นเนื่องจากอวัยวะเพศภายนอกพัฒนามากขึ้น สัปดาห์นี้เป็นสัปดาห์ที่สำคัญเนื่องจากอวัยวะภายในนั้นกำลังพัฒนาและต่อมไทรอยด์ได้เจริญเต็มที่และเริ่มผลิตฮอร์โมนแล้ว ขณะนี้ไตกำลังทำงานอย่างดีโดยผลิตและปลอดปล่อยปัสสาวะเข้าไปในน้ำคร่ำรอบตัว '
                                              'คอ กำลังยืดยาวเพื่อให้คางไม่ต้องวางอยู่บนหน้าอกอีกต่อไป ผมกำลังงอก เล็บมือและเล็บเท้ายังงอกต่อไป'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'เมื่อตั้งครรภ์มาถึงระยะนี้ มดลูกจะบวมขึ้นทุกสัปดาห์คุณสามารถติดตามคงามเป็นไปของมดลูกได้โดยหาตำแหน่งสูงสุดของมดลูกซึ่งเรียกว่า ก้นมดลูก ตำแหน่งนี้จะค่อยๆเคลื่อนที่ขึ้นไปในช่องท้องในสัปดาห์ถัดๆไป ในขณะที่นอนหงายราบให้วาง "0ซม. " ของสายวัดไว้บนกระดูกหัวหน่าว และนับขึ้นไปสัปดาห์ละ 1 ซม. '
                                                'อย่างไรก็ตามแพทย์มักจะเฝ้าสังเกตการเจริญเติบโตของมดลูกของคุณด้วยคลื่นเสียงความถี่สูงมากกว่าจะวัดความสูงของก้นมดลูกเนื่องจากจะแม่นยำกว่า ถ้าแพทย์ได้แนะนำให้เก็บตัวอย่างคอริโอนิกวิลไลหรือทำการทดสอบคัดกรองซีรัมก็อาจทำในสัปดาห์นี้'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/14.png',height: 80.0),

                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/15.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 15", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 9.3-10.3 ซม. และจะหนักประมาณ 50 ก. ในสัปดาห์นี้ขนซึ่งมีความละเอียดพิเศษเรียกว่า ขนอ่อน จะเริ่มงอกทั่วร่างกายในรูปแบบเป็นเกลียวอย่างประณีตตามลายเนื้อผิวหนังที่บางและโปร่งแสง เป็นรูปแบบที่จะทำให้เกิดลายนิ้วมือในภายหลัง ขนอ่อนนี้คาดว่าทำหน้าที่ปกป้อง '
                                              'โดยทำตัวเป็นสมอสำหรับชั้นปกคลุมผิวหนังที่มีลักษณะเป็นขี้ผึ้งซึ่งจะหลั่งออกมากในเดือนถัดๆไป ขนอ่อนจะร่วงก่อนเกิด มีขนที่หนากว่า หยาบกว่ามาแทนที่ ซึ่งเห็นได้เมื่อทารกถือกำเนิด ขนคิ้วและผมยังคงงอกต่อไป'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'จนถึงเวลานี้คุณแม่อาจกำลังรู้สึกคับบริเวณเอว จึงถึงเวลาที่จะคิดถึงเสื้อผ้าหลวมๆ สำหรับคุณแม่ อาการท้องผูกอาจเริ่มเป็นปัญหาเนื่องมาจากระดับโพรเจสเทอโรนที่สูงขึ้นเรื่อยๆซึ่งทำให้กล้ามเนื้อลำไส้ทำงานได้ช้าลง ดังนั้นควรรับประทานผักและผลไม้ที่อุดมไปด้วยเส้นใย '
                                                'และดื่มน้ำให้มากขึ้น สัปดาห์นี้กระดูกของลูกเจริญเติบโตอย่างรวดเร็ว คุณจึงควรรับประทานแคลเซียมให้เพียงพอ ถ้าคุณกำลังวางแผนเที่ยว ไตรมาสที่ 2 นี้เป็นเวลาที่ดีที่สุดที่จะออกเดินทาง เพศสัมพันธ์อาจกลับมาอีกครั้งเนืองจากพบว่าสตรีจำนวนมากมีความต้องการทางเพศที่สูงขึ้น'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/15.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/16.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 16", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 10.8-11.6 ซม. และมีน้ำหนักประมาณ 80 ก. แคลเซียมจะสะสมเพียงพอจนเห็นกระดูกของทารกได้จากเอกซเรย์ และมีการสร้างแขนขาเต็มที่แล้วโดยขาเติบโตยาวกว่าแขน ข้อทั้งหมด "ทำงาน" และเคลื่อนไหวได้ทุกอย่าง แม้กระทั่งยกนิ้วหัวแม่มือไปที่ปาก ศีรษะตั้งตรงมากขึ้น '
                                              'สมองควบคุมระบบประสาทและกล้ามเนื้อมากขึ้น การเคลื่อนไหวแต่ละครั้งจึงเป็นไปอย่างตั้งใจ รวดเร็วและซับซ้อนมากขึ้น ระบบภูมิคุ้มกันกำลังเริ่มผลิตแอนติบอดีป้องกันของตนเอง เป็นการรับหน้าที่ต่อจากพ่อแม่'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'มดลูกของคุณแม่กำลังขยายเพื่อให้มีที่สำหรับลูกและรกที่กำลังเติบโต และน้ำคร่ำที่มีปริมาณเพิ่มขึ้นเรื่อยๆโดยระยะนี้มีปริมาตรประมาณ 200 มล. สัปดาห์ที่ 16 เป็นสัปดาห์สำคัญสำหรับการทดสอบ โดยมักทำการทดสอบเอเอฟพีและการคดกรองอื่น เพื่อเตรียมพร้อมสำหรับการให้นมลูก '
                                                'ขณะนี้ต่อมน้ำนมของคุณจะเริ่มผลิตน้ำนมซึ่งทำให้เกิดการบวม และอาการกดเจ็บ เลอดจะไหลเวียนมายังเต้านมมากขึ้นทำให้มองเห็นหลอดเลือดดำและปุ่มมอนต์โกเมรี (ปุ่มเล็กๆ รอบหัวนม) เด่นชัดขึ้น'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/16.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/17.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 17", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวอยู่ที่ประมาณ 11-12 ซม. และมีน้ำหนักประมาณ 100 ก. ขั้นสำคัญในสัปดาห์นี้ คือ การสะสมไขมันสีน้ำตาลซึ่งไขมันชนิดพิเศษที่จะมีบทบาทสำคัญในการสร้างความร้อนหลังเกิด ระบบการไหลเวียนเลือดและระบบปัสสาวะกำลังทำงานอย่างประสิทธิภาพในขณะนี้ '
                                              'หัวใจสูบฉีดเลือดสูงสูดวันละ 24 ลิตร ขณะนี้ศีรษะได้สัดส่วนกับร่างกายมากขึ้น ผมยังคงงอกต่อ ขนก็ยังคงงอกบนใบหน้าต่อไป และขนตายาวขึ้น สิ่งที่เติบโตอย่างเหลือเชื่อในอัตราเดียวกันกับลูก คือ รก อวัยวะอันสำคัญยิ่งนี้พัฒนาตามทารกในครรภ์ จากวิลไลที่ยื่นเหมือนนิ้วมือในสัปดาห์แรกๆ '
                                              'กลายเป็นก้อนเนื้อเยื่อหนา 2.5 ซม. ที่หนักมากกว่า 450 ก. เมื่อครรภ์ครบกำหนดภายในสัปดาห์ที่ 17 รกจะมีขนาดใหญ่เห็นได้ชัดเจน โดยมีเครือข่ายหลอดเลือดที่แน่นหนา ทำให้มีพื้นที่ผิวมหาศาลเพื่อแลกเปลี่ยนสารอาหารและของเสีย'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'เพื่อตอบสนองความต้องการของลูกและรกที่คอยให้อาหารและดูแลลูก หัวใจของคุณได้เพิ่มปริมาณเลือดส่งออกจากหัวใจต่อนาทีขึ้นร้อยละ 40 โดยประมาณ ปริมาณเลือดที่เพิ่มขึ้นนี้เพิ่มความดันแก่หลอดเลือดขนาดเล็ก เช่น หลอดเลือดฝอยในจมูกและเหงือก ดังนั้นให้เตรียมพร้อมสำหรับการมีเลือดกำเดาออกเล็กน้อย (และอาจรู้สึกคันจมูก) และเลือดออกจามไรฟัน '
                                              'ในระยะนี้คุณอาจจำเป็นต้องหาเสื้อชั้นในขนาดใหญ่ขึ้น และอาจพบว่ามือเท้าบวมเล็กน้อยเนื่องมาจากการคั่งน้ำ (บวมน้ำ) รับประทานอาหารให้เหมาะสมต่อไปเนื่องจากลูกต้องการสารอาหารมากชนิดที่สุดเท่าที่จะเป็นไปได้'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/17.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/18.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 18", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 12.5-14 ซม. และมีน้ำหนักประมาณ 150 ก. ขณะนี้ลูกจะไวต่อโลกภายนอกมากขึ้นและส่งสัญญาณการมีตัวตนด้วยวิธีการเตะและกระทุ้ง กำมือได้ สามารถได้ยินเสียง เนื่องจากส่วนของสมองที่รับและแปลสัญญาณประสาทจากหูกำลังพัฒนา '
                                            'จะคุ้นเคยกันเสียงเลือดที่สูบฉีดผ่านสายสะดือและเสียงหัวใจที่เต้นของคุณ แต่จะตกใจเมื่อได้ยินเสียงดังรบกวนถุงลม (ถุงอากาศ) กำลังพัฒนาอยู่ในปอดที่เติบโตขึ้นอย่างรวดเร็ว เกิดอุ้งนิ้วมือและนิ้วเท้าและลายนิ้วมือเริ่มแรกปรากฏขึ้น ตาอยู่ในตำแหน่งสุดท้ายแม้ว่ายังหลับตาอยู่ใบหน้ามีเนื้อมีหนัง ลำไส้ส่วนล่างกำลังเก็บสะสมเศษที่ย่อยไม่ได้เรียกว่า '
                                              'ขี้เทา จากน้ำคร่ำที่กลืนเข้าไป จะทำให้ถ่ยเป็นครั้งแรก หากทารกเป็นเพศชายในตอนนี้เขาก็จะกำลังสร้างตาอมลูกหมาก'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ถ้าคุณตั้งครรภ์เป็นครั้งแรก สัปดาห์นี้อาจน่าตื่นเต้นมากเนื่องจากประมาณช่วงนี้คุณอาจรู้สึกถึงการเคลื่อนไหวของลูกได้เป็นครั้งแรก อย่างไรก็ตามแม่จำนวนมากที่ตั้งครรภ์ครั้งแรกอาจไม่รู้สึกถึงการเคลื่อนไหวใดๆ ของทารกในครรภ์จนอีก 2-3 สัปดาห์ข้างหน้า '
                                              'และโดยเฉพาะถ้าแม่มีน้ำหนักเกินมาตรฐาน เนื่องจากท้องมีขนาดใหญ่ขึ้นเรื่อยๆแคุณอาจเริ่มเป็นโรคริดสีดวงทวารประมาณช่วงสัปดาห์นี้ การรับประทานอาหารที่มีเส้นใยสูงช่วยป้องกันได้ และคุณสามารถถามแพทย์หรือเภสัชกรเรื่องครีมหรือขี้ผึ้งที่ใช้เฉพาะที่ได้เพื่อให้รู้สึกสบายขึ้น ร่างกายที่ใหญ่ขึ้นอาจเริ่มส่งผลต่อการรักษาสมดุลดังนั้ควรระมัดระวังเป็นพิเศษและรักษาท่าทางไว้ให้ดี'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/18.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),       //18

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/19.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 19", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 13-15 ซม. และมีน้ำหนักประมาณ 200 ก. การเติบโตของสมองยังเดินหน้าอย่างไม่หยุดยั้ง เส้นประสาทที่เชื่อมต่อกล้ามเนื้อกับสมอง (เซลล์ประสาทสั่งการ) เติบโตอยู่ในตำแหน่งที่สมควรแล้ว การเคลื่อนไหวของทารกในขณะนี้จึงอยู่ในอำนาจจิตใจ '
                                              'ยิ่งไปกว่านั้นการเคลื่ิอนไหวเล่านี้ยังนุ่มนวลและประสานกันมากขึ้นเนื่องจากฉนวนไขมันเคลือบเส้นประสาทที่เรียกว่า ไมอีลิน ได้เริ่มเติบโตและส่งเสริมการแลกเปลี่ยนข้อมูลอย่างนุ่มนวลและรวดเร็ว ผิวหนังของลูกเริ่มหนาขึ้นโดยพัฒนาเป็น 4 ชั้น ต่อมไขมันพิเศษเริ่มหลั่งสารที่มีลักษณะเป็นขี้ผึ้งเรียกว่า '
                                              'ไขมันเคลือบผิว เป็นชั้นป้องกันน้ำสำหรับผิวหนังของทารกในครรภ์ที่เปราะบางซึ่งแช่อยู่ในน้ำคร่ำอย่างต่อเนื่อง ขณะนี้กรดในกระเพาะอาหารที่ผลิตขึ้นในทางเดินอาหารจะช่วยให้น้ำคร่ำใดๆที่กลืนเข้าไปสามารถผ่านเข้าไปในระบบไหลเวียนเลือดเพื่อไปกรองออกได้ ขณะนี้หูยื่นออกมาจากด้านข้างศีรษะ '
                                              'หน่อฟันแท้ปรากฏหลังหน่อฟันน้ำนม แขนขาได้สัดส่วน หัวนมปรากฏขึ้น และมองอวัยวะเพศออก'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'จนถึงเวลานีเคุณแม่จะรู้สึกถึง "ระยะเด็กเริ่มดิ้น" ซึ่งเป็นการเคลื่อนไหวของลูกที่มองเห็นได้เป็นครั้งแรก การเปลี่ยนแปลงอื่นรวมถึงรูปแบบการเพิ่มน้ำหนักของคุณโดยอาจกำลังเพิ่มน้ำหนักในบางบริเวณ เช่น แก้มก้น สะโพก นอกเหนือจากช่องท้อง มดลูกที่ใหญ่ขึ้นรวมกับน้ำหนักที่เพิ่มขึ้นในขณะนี้อาจมีผลต่อท่าทาง '
                                              'การเดิน และความสามารถในการนอนหลับ ลองใช้หมอนหลายๆใบหนุนและจัดท่าให้สบายยิ่งขึ้นในเวลากลางคืน'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/19.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/20.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 20", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 14-16 ซม. และจะมีน้ำหนักประมาณ 260 ก. ในขณะนี้เติบโตได้ครึ่งทาง เป็นเวลาสำคัญยิ่งสำหรับพัฒนาการด้านประสาทการรับรู้ ไขหุ้มทารกกำลงัผลิตมากขึ้นโดยมีขนอ่อนนุ่มยึดให้อยู่กับที่และจะหนาเป็นพิเศษรอบคิ้วผิวหนังกำลังหนาขึ้นและขณะนี้มี 4 ชั้น '
                                              'ชั้นหนึ่งประกอบด้วยชั้นหนังกำพร้าซึ่งเป็นตัวทำให้เกิดลายบนผิวที่ปลายนิ้ว ฝ่ามือ และฝ่าเท้า เล็บเท้ากำลังงอกและผมยังคงงอกต่อไป'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ขณะนี้เป็นเวลา 18 สัปดาห์นับจากเริ่มตั้งครรภ์ และจะดูออกมาคุณตั้งครรภ์แล้ว เอวของคุณได้ขยายขึ้นใหญ่มากจนมองไม่เห็นแล้ว และมดลูกกำลงัดันท้องออกมาในเวลานี้ส่วนที่สูงที่สุดของมดลูก (ก้านมดลูก) ควรอยู่ใต้สะดือพอดี '
                                              'ถ้าคุณแม่ได้รับการสแกนในสัปดาห์นี้อาจจะได้ยินเสียงหัวใจลูกเต้นผ่านทางหูฟังหรือคลื่นเสียงความถี่สูงแบบดอปเพลอร์ได้ เป็นประสบการณ์ที่หน้าตื่นเต้นเป็นที่สุด'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/20.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/21.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 21", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 18 ซม. และมีน้ำหนักประมาณ 300 ก. น้ำหนักจะยังคงเพิ่มขึ้นในสัปดาห์นี้ซึ่งสำคัญยิ่งสำหรับการรักษาร่างกายให้อบอุ่นหลังเกิด ขณะนี้ระบบย่อยอาหารพัฒนามากพอที่จะดูดซึมน้ำและน้ำตาลจากน้ำคร่ำที่กลืนเข้าไป กรองบางส่วนผ่านทางไตและไล่ของแข็งปริมาณเล็กน้อยมากไปไกลถึงลำไส้ใหญ่ สิ่งที่ไตกำจัดไม่ได้จะผ่านรกเข้าไปในกระแสเลือดและไตของคุณ '
                                              'ลูกกำลังสร้างปุ่มรับรสบนลิ้น ความรู้สึกในการรับรสดีขึ้นเนื่องมาจากพัฒนาการของสมองและปลายประสาทเมื่อสแกนดูอาจเห็นลูกลูบหน้าตนเอง ดูดนิ้วหัวแม่มือหรือเล่นกับสายสะดือของเขา'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'น้ำหนักของคุณแม่จะเพิ่มขึ้นอย่างรวดเร็วขึ้นในช่วง 10 สัปดาห์ต่อจากนี้เพราะลูกสะสมชั้นไขมัน น้ำหนักที่เพิ่มขึ้นนี้จะเป็นประมาณครึ่งหนึ่งของน้ำหนักที่เพิ่มขึ้นทั้งหมด คุณแม่อาจสังเกตว่าคุณแม่จะมีความอยากอาหารเพิ่มขึ้นด้วยก็ได้เพราะต้องการพลังงานเพิ่มเติมเพื่อตอบสนองต่อเมแทบอลิซึมพื้นฐานที่เพิ่มขึ้น '
                                              'จึงควรรับประทานต่อไป แต่หลีกเลี่ยงการรับประทานอาหารเพียง 1 หรือ 2 ชนิดเป็นประจำโดยเฉพาะของว่างมันๆ และไม่ถูกสุขลักษณะซึ่งมีคุณค่าทางโภชนาการน้อยมาก อย่าแปลกใจถ้าคุณอยากรับประทานของแปลกซึ่งเรียกว่าเป็นอาการกินสิ่งที่ไม่ใช่อาหาร เขม่าและดินเป็นตัวอย่างที่แปลกมาก'
                                              ' ว่ากันว่าสตรีคั้งครรภ์รู้สึกอยากรับแระทานสิ่งพวกนี้เป็นอย่างมาก ขณะนี้เส้นเลือดขอดอาจเป็นปัญหาดังนั้นลดความเสี่ยงให้เหลือน้อยที่สุด โดยสวมกางเกงยืดแนบเนื้อ ออกกำลังกายทุกวันและยกขาให้มากที่สุดเท่าที่จะเป็นไปได้'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/21.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/22.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 22", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 19 ซม. และจะหนักประมาณ 350 ก. สมองยังคงเติบโตต่อไปอย่างรวดเร็วโดยเฉพาะในบริเวณที่สร้างเซลล์ประสาท อวัยวะภายในชำนาญงานของตัวเองมากขึ้น แม้ว่าผิวหนังยังมีสีแดง มีรอยย่นและมีขนอ่อนปกคลุมแต่ผิวหนังก็ยังโปร่งใสน้อยลงและต่อมเหงื่อพัฒนาขึ้น ขณะนี้เล็บมืองอกเต็มแล้วและยังคงงอกต่อไป '
                                              'ในเวลานี้จะสามารถบันทึกแบบแผนการนอนหลับและการตื่นของลูกน้อยได้ ลูกจะตื่นตัวมากขึ้น สามารถปลุกให้ตื่นได้ถ้าเคาะท้องของคุณหรือเมื่อได้ยินเสียงดัง หรือมีการเคลื่อนไหวอย่างกะทันหัน เมื่อกำลังดูดนิ้วหัวแม่มือนั้นลูกสามารถทั้งยกนิ้วหัวแม่มือเข้าปากหรือก้มศีรษะลงมาหามือได้ '
                                              'กระบวนการเรียนรู้นี้จะเกิดซ้ำภายหลังเกิดโดยจะบูรณาการความรู้เชิงการสัมผัสที่ได้รับในมดลูกเข้ากับข้อมูลจากตา (และจากการนำสิ่งของเข้าปาก)'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ในตอนนี้ปริมาณเลือดที่เพิ่มขึ้นส่งผลให้เลือดเจือจาง ทำให้เกิดสิ่งที่เรียกว่า "ภาวะเลือดจางทางสรีรวิทยาแห่งการตั้งครรภ์" ภาวะเลือดจางแห่งสรีรวิทยาพบบ่อย แต่แพทย์จะดูด้วยว่าคุณได้รับธาตุเหล็กเพียงพอหรือไม่ เพิ่มการบริโภคธาตุเหล็กได้โดยรับประทานเนื้อแดง รำข้าว '
                                              'เมล็ดงา และถั่วแขก ร่วมกับน้ำส้มคั้นเพื่อช่วยดูดซึมธาตุเหล็ก มดลูกที่กำลังมีขนาดใหญ่ขึ้นเพิ่มความดันแก่ปอด กระเพาะอาหาร และกระเพาะปัสสาวะของคุณ ซึ่งอาจทำให้หายใจลำบากเมื่อออกกำลังกาย อาหารไม่ย่อยและจำเป็นต้องถ่ายปัสสาวะบ่อยขึ้น อาจเกิดผิวแตกลายที่ท้อง เต้านม และสะโพกได้ ให้คุณคิดแผนการท่องเที่ยวในช่วงสุดสัปดาห์ไว้ก่อนที่ท้องจะใหญ่เกินไป'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/22.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/23.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 23", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวประมาณ 20 ซม. และจะหนักประมาณ 455 ก. ใบหน้าและลำตัวจะดูเหมือนทารกครบกำหนดคลอดมากขึ้น แต่ยังมองเห็นกระดูกและอวัยวะใต้ผิวหนังได้ แม้ว่าลูกกำลังสะสมไขมันด้วยอัตราเร็วสูง '
                                              'แต่ก็ยังดูเหี่ยวย่นเนื่องจากกำลังสร้างผิวหนังเร็ซกว่าไขมันใต้ผิวหนังจึงเกาะอยู่อย่างหลวมๆ ริมฝีปากเห็นชัดเจนมากขึ้น หน่อฟันน้ำนมอยู่ใต้แนวเหงือกมีการสร้างตาแต่ยังคงปิดสนิทและม่านตายังขาดสารสีตับอ่อนกำลังพัฒนาไม่หยุด '
                                              'ภายหลังจะผลิตอินซูลินซึ่งเป็นฮอร์โมนสำคัญในการคงไขมันในเนื้อเยื่อ การได้ยินไวขึ้นเนื่องจากกระดูกหูแข็งขึ้นแล้ว ได้ยินเสียงต่ำของผู้ชายได้ง่ายกว่าเสียงแหลมสูงของผู้หญิง'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'เนื่องจากท้องที่กำลังขยายใหญอาจมีผลกระทบต่อระบบย่อยอาหาร ทำให้เกิดอาการแสบร้อนกลางอกและอาหารไม่ย่อยได้ การรับประทานอาหารมื้อเล็กลงและบ่อยขึ้นจะช่วยได้เช่นเดียวกับการเดินหลังอาหาร สัปดาห์นี้คุณอาจเริ่มเกิดภาวะเลือดจาง ดังนั้นการรับประทานอาหารที่อุดมสมบรูณ์ด้วยธาตุเหล็กจึงเป็นสิ่งสำคัญ'
                                              'การบีบตัวแบบแบรกซ์ทั่นฮิคส์อาจเริ่มประมาณช่วงนี้การบีบตัวอย่างไม่สม่ำเสมอและไม่เจ็บเช่นนี้เป็นส่วนหนึ่งของการฝึกเตรียมกระบวนการคลอดของมดลูก เมื่อการตั้งครรภ์ดำเนินไปการบีบตัวจะแรงขึ้น แต่อย่าเข้าใจผิดว่าเป็นการเจ็บท้องจริง คุณจะรู้สึกได้ถ้าวางมือบนท้องไม่เป็นเช่นนั้นก็อาจผ่านไปโดยไม่ทันสังเกต '
                                              'ให้คุณพูดคุยกับลูกเนื่องจากลูกได้ยินเสียงดีแล้ว และจะตอบสนองต่อเสียงต่างๆได้ด้วย'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/23.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/24.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 24", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'ตอนนี้ลูกจะมีความยาวประมาณ 21 ซม. และหนักประมาณ 540 ก.สัปดาห์นี้เป็นสัปดาห์เด่นสำหรับการเติบโตของลูกน้อยเนื่องจากถ้าเกิดมาในเวลานี้อาจรอดชีวิตได้ แต่ลูกจะยังตัวเล็กมาก ปอดยังเจริญไม่เต็มที่ และต้องเผชิญความยากลำบากมากมาย '
                                                'คงจำเป็นต้องเลี้ยงในตู้อบภายใต้การบริบาลของผู้เชี่ยวชาญ ศีรษะยังใหญ่เมื่อเทียบกับร่างกายส่วนที่เหลือ แต่ร่างกายยังเติบโตต่อจนเต็มมดลูกมากขึ้นและทำให้การเคลื่อนไหวจำกัดขึ้น ลูกกำลังสร้างสมไขมันแต่ยังมีผิวหนังย่นสีแดง โดยฝ่าเท้าและฝ่ามือจะหนากว่าเดิม ลูกสามารถได้ยินเสียงดนตรี '
                                                'เสียงพูด เสียงหัวใจที่เต้นของคุณ และเสียงท้องร้องของคุณเนื่องจากรู้สึกถึงโลกภายนอกมากขึ้นเรื่อยๆและการได้ยินพัฒนาดีแล้ว ที่สำคัญลูกเริ่มผลิตสารลดแรงตึงผิวซึ่งเป็นสารสำคัญยิ่งที่ช่วยให้ปอดขยายตัวเมื่อถือกำเนิดโดยป้องกันไม่ให้ถุงลมติดกัน'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'น้ำหนักตัวของคุณแม่ที่เพิ่มขึ้นอาจกำลังส่งผลทำให้เกิดอาการปวดหลัง ปัญหากระเพาะปัสสาวะ เจ็บเท้า และเกิดความล้าตั้งแต่นี้ไป ดังนั้นเริ่มจัดเตรียมสิ่งของที่จะทำให้ใช้ชีวิตง่ายที่สุดเท่าที่จะเป็นไปได้ ตัวอย่างเช่น สวมร้องเท้าสบายๆยกเท้าสูงทุกครั้งที่มีโอกาส'
                                              ' โดยให้สูงกว่าระดับหัวใจถ้าเป็นไปได้ ขอให้คู่ของคุณ เพื่อน และญาติช่วยทำธุระต่างๆให้ คุณอาจมีนัดตรวจครรภ์ในสัปดาห์นี้เพื่อตรวจสุขภาพของตัวคุณและลูก'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/24.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/25.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 25", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกมีความยาวประมาณ 22 ซม. และจะหนักประมาณ 700 ก. ร่างกายได้สัดส่วนดีแม้ว่ผิวหนังยังบางและยังผอมอยู่ หลอดเลือดยังคงพัฒนาต่อในปอด อวัยวะสำคัญอื่นๆ พัฒนาดีแล้วในเวลานี้ ฟันแท้กำลังพัฒนาอยู่ในหน่อภายในเหงือก '
                                              'รูจมูกกำลังเริ่มเปิด เส้นประสาทรอบปากและริมฝีปากไวขึ้นเพื่อเตรียมพร้อมดูดนมแม่และหัดส่วนต่างๆ ของร่างกายตนเอง การจำแนกเพศสมบรูณ์แล้ว ถ้าเป็นชายอัณฑะได้เคลื่อนลงมาในถุงอัณฑะแล้ว ถ้าเป็นหญิงช่องคลอดเป็นช่องเรียบร้อยแล้ว'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'มดลูกของคุณจะใหญ่ขึ้นจนมีขนาดเท่ากับลูกฟุตบอลมันจะดันกะบังลมและซี่โครงซี่ล่างขึ้น และเข้าไปแทนที่กระเพาะอาหาร ความดันในท้องอาจทำให้สะดือยื่นออกมา ทำให้ "สะดือจุ่น" ถ้าก่อนหน้านี้คุณแม่มี "สะดือบุ๋ม" '
                                              'ความดันในท้องรวมกับผลของโพรเจสเทอโรนซึ่งทำให้อาหารเคลื่อนที่ออกจากกระเพาะอาหารช้าลงหมายความว่าคุณมีโอกาสมีกรดไหลย้อนขึ้นมาในหลอดอาหาร (ลำคอส่วนล่าง) มากขึ้นและเกิดอาการแสบร้อนกลางอกโดยเฉพาะหลังอาหารมื้อใหญ่'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/25.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/images/fourty/26.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 26", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                        'ตอนนี้ลูกจะมีความยาวอยู่ที่ประมาณ 23 ซม. และมีน้ำหนักประมาณ 850 ก. ถึงแม้ว่าพื้นที่ว่างในมดลูกเหลือน้อยกว่าที่เคย ลูกก็ยังคงเติบโตต่อ กระดูกสันหลังแข็งแรงเพียงพอที่จะพยุงร่างกายแล้ว ลูกจะตอบสนองต่อสัมผัสและเสียงโดยชีพจรจะเร็วขึ้นเมื่อได้ยินเสียงและเคลื่อนไหวตามจังหวะดนตรีได้ ลูกยังคงฝึกการหายใจ ปอดเกือบเจริญเต็มที่แล้ว '
                                            'คิ้วสมบรูณ์ ในขณะที่ยังดูผอมแต่ก็มีการสะสมไขมันอย่างต่อเนื่อง เมื่อถึงเวลาเกิดน้ำหนักจะเพิ่มขึ้นมากแล้วและจะออกมาตัวอวบกลม ถ้าเป็นเพศชายเซลล์ในอัณฑะจะเพิ่มขึ้นแล้วซึ่งมีความสำคัญในการผลิตเทสทอสเทอโรน (ฮอร์โมนเพศชายชนิดหนึ่ง)'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'เมื่อใกล้สิ้นสุดไตรมาสที่ 2 อาจเกิดความไม่สบายอย่างใหม่ขึ้นได้ รวมถึงอาการปวดหลัง ตะคริวที่ขา ปวดศีรษะ และแรงกดทับบนและรอบเชิงกราน นอกจากนี้การเคลื่อนไหวของลูกอาจทำให้คุณเกิดอาการเจ็บใต้ซี่โครงเป็นครั้งคราวด้วยซึ่งจะบรรเทาได้ถ้าคุณนอนตะแคงพ่ออาจสามารถได้ยินเสียงหัวใจของลูกเต้นถ้าวางศีรษะบนท้องของคุณ การสแกนในสัปดาห์ที่ 26 เป็นประสบการณ์สร้างความผูกพันธ์อย่างแท้จริงเนื่องจากคุณเห็นลักษณะกายวิภาค สีหน้า และการเคลื่อนไหวของลูก'
                                            ,style: TextStyle(color: Colors.brown)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/26.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/27.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 27", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'ตอนนี้ลูกจะมีความยาวอยู่ที่ประมาณ 24 ซม. และจะหนักประมาณ 1 กก. ดวงตาจะสร้างเสร็จแล้ว ขนตาที่ช่วยป้องกันก็งอกเต็มที่แล้วเช่นกัน ลูกกำลังอวบขึ้นเนื่องมาจากการสร้างไขมันใต้ผิวหนัง และถ้าเกิดมาขณะนี้ดูเกือบเหมือนครรภ์ครบกำหนดถึงแม้ว่าจะผอมกว่าและตัวเล็กกว่ามาก ปุ่มรับรสบนลิ้นและกระพุ้งแก้มทำงานได้เต็มที่ ลูกจะชอบดูดอะไรก็ตามที่เข้าใกล้ปาก '
                                                'ปอดยังคงเติบโตต่อและลูกจะมีโอกาสรอดชีวิตร้อยละ 90 ถ้าเกิดมาขณะนี้ แต่ยังไกลจากขั้นพัฒนาเต็มที่อยู่มากและจะต้องเลี้ยงในตู้อบโดยใช้เครื่องช่วยหายใจ นอกจากนี้การทำงานของตับจะยังไม่ดีพอ สมองยังพัฒนาไม่เต็มที่ ระบบภูมิคุ้ทกันอ่อนแอ ทำให้ไว้ต่อการติดเชื้อชนิดที่ทารกครบกำหนดคงกำจัดได้อย่างง่ายดาย'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ช่วงหลังการตั้งครรรภ์ ระดับคอเลสเทอรอลในเลือดคุณอาจสูงขึ้นแต่ไม่น่าเป็นห่วง คอเลสเทอรอลเป็นสารหน่อยย่อยที่สำคัญยิ่งซึ่งรกใช้ผลิตฮอร์โมนในการตั้งครรภ์หลายตัว รวมถึงโพรเจสเทอโรนซึ่งสำคัญในการพัฒนาการของเต้านม และการคลายกล้ามเนื้อมดลูกและกล้ามเนื้อเรียบอื่น '
                                              'ให้คุยและร้องเพลงให้ลูกฟังเสมอ เนื่องจากลูกรู้จักเสียงของคุณและจะรู้สึกสบายใจเมื่อมีการสื่อสารเช่นนั้น'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/27.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),         // 27

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/28.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 28", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวอยู่ที่ประมาณ 25 ซม. และจะหนักประมาณ 1.1 กก. ในขณะนี้เป็นไตรมาสที่ 3 ลูกหนักประมาณ 1 ใน 3 ของน้ำหนักแรกเกิดโดยประมาณ ลูกกยังคงฝึกหายใจต่อโดยมีสารน้ำเข้าไปในทางเดินอากาศหายใจหลักไม่ใช่ในปอด '
                                          'และกล้ามเนื้อที่จำเป็นกำลังพัฒนาเป็นอย่างดีบางครั้งที่ลุกสะอึกคุณอาจรู็สึกได้ ผิวหนังเป็นสึแดง และขณะนี้ปกคลุมด้วยไขหุ้มทารกทั้งตัว ผลยาวขึ้น ยังคงสะสมไขมันใต้ผิวต่อ ตัวใหญ่ พอที่จะมองเห็นการจัดท่าทางในมดลูกได้แล้วว่าศีรษะหรือก้นจะออกมาก่อน ที่พบน้อยคืออยู่ในท่าตะแคงหรือนอนขวาง ลูกจะได้ยินมากขึ้น ชอบดูดนิ้งหัวแม่มือหรือนิ้วมืออื่นถ้าเป็นเพศชาย อัณฑะได้เคลื่อนลงมาในถุงอัณฑะเกือบหมดแล้ว ถ้าเป็นเพศหญิง แคมยังเล็กและยังปิดปุ่มกระสัน (คลิทอริส) ไม่มิด'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ขณะนี้จะอยู่ในช่วงสุดท้ายของการตั้งครรภ์และจะพบว่าความสัมพันธ์กับลูกพัฒนามากขึ้น เนื่องจากคุณคุ้นเคยกับการเคลื่อนไหวและระยะเวลานอนของลูก เป็นความคิดที่ดีที่จะ "ทดสอบ" การเคลื่อนไหวของลูกในช่วงเช้าและเย็น 1 ชั่วโมง ควรดูว่ารู้สึกถึงการเคลื่อนไหวอย่างน้อย 10 ครั้งหรือไม่ '
                                          'ถ้าถึงแสดงว่าทุกอย่างเรียบร้อย แต่ถ้าไม่ถึงควรติดต่อแพทย์หรือผู้ผดุงครรภ์ คุณแม่อาจจะเริ่มไปพบแพทย์หรือนางผดุงครรภ์ทุก 2 สัปดาห์ แพทย์หรือนางผดุงครรภ์อาจเสนอให้คัดกรองกลูโคส (หาโรคเบาหวาน) และทดสอบเลือดหาภาวะเลือดจาง ถ้าคุณมีหมู่เลือดอาร์เอชลบ อาจได้รับการฉีดอิมมูลินต่ออาร์เอชเพื่อป้องกันไม่ให้สร้างเอนติบอดีที่อาจทำให้เกิดปัญหาถ้าในอนาคตคุณตั้งครรภ์ลูกอาร์เอชบวก'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/28.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/29.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 29", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวอยู่ที่ประมาณ 26 ซม. และจะหนักประมาณ 1.25 กก. เนื้อที่ในมดลูกกจะคับแคบลง แต่ยังคงยืดและงอแขน ขา และบางครั้งก็เตะได้ ศีรษะซึ่งมีผมงอกมากขึ้นนั้นได้สัดส่วนกับส่วนที่เหลือของร่างกายในขณะที่น้ำหนักตัวเพิ่ม '
                                          'กระดูกที่อ่อนและขยายตัวได้ในกะโหลกศีรษะทำให้สมองพัฒนาอย่างรวดเร็วและเนื้อเยื่อสมองยังคงเติบโตต่อไป ขณะนี้สมองมีทักษะในการควบคุมการทำงานทางร่างกาย เช่น การหายใจ อุณหภูมิของร่างกาย แต่ถ้าเกิดมาในเวลานี้จะยังคงต้องใช้ตู้อบให้เกิดความอบอุ่น ประสาทสัมผัสตอบสนองมากขึ้น ตัวอย่างเช่น ตามีความไวต่อแสงมากขึ้น ความสามารถในการได้ยิน รับรสและรับกลิ่นมากขึ้น ยังปิดปุ่มกระสัน (คลิทอริส) ไม่มิด'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'คุณอาจมีน้ำนมเหลืองไหลออกมาจากเต้านม เป็นน้ำเหนียวๆ ที่จะเป็นอาหารชนิดแรกสำหรับลูกถ้าคุณให้นมตนเองแก่ลูก นมน้ำเหลืองออกมาก่อนน้ำนมปกติซึ่งอาจยังไม่ได้ไหลออกมาใน 1-2 วัยหลังคลอด เต้านมกำลังผลิตน้ำนมนี้ภายใต้อิทธิพลของโพแลกทินซึ่งเป็นฮอร์โมนที่ขณะนี้กำลังผลิตขึ้นในปริมาณมากเนื่องจากถูกลูกกระตุ้น '
                                              'มดลูกกำลังมีขนาดใหญ่ขึ้นมากและขณะนี้ก็กดทับอวัยวะภายใน ดังนั้นการต้องถ่ายปัสสาวะบ่อยจึงอาจเป็นปัญหาเมื่อออกไปนอกบ้านได้ '
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/29.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/images/fourty/30.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 30", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'ตอนนี้ลูกจะมีความยาวจากศีรษะถึงก้นอยู่ที่ประมาณ 27 ซม. และหนักประมาณ 1.36 กก. มีเส้นผมหนาขึ้น และผิวมีรอยเหี่ยวย่นน้องลง ลูกจะดูอ้วนท้วนขึ้นและเมื่อครบกำหนดคลอดทุกสิ่งทุกอย่างก็จะดูสมบรูณ์ เล็บมือและเล็บเท้ากำลังงอกอย่างรวดเร็ว ไขกระดูกได้รับช่วงหน้าที่ผลิตเม็ดเลือดแดงต่อจากตับ โครงกระดูกกำลังแข็งขึ้นเรื่อยๆ '
                                              'ขณะนี้มีการเคลื่อนไหวเลียนแบบการหายใจเป็นจังหวะในเวลาเดียวกับที่ปอดเจริญขึ้น ลูกยังคงสะอึกจากการกลืนน้ำคร่ำ การขาดเนื้อที่ในมดลูกจำกัดการเคลื่อนไหวให้น้อยลงทุกทีแต่ยังคงเตะได้ซึ่งบ่อยครั้งเป็นการตอบสนองต่อเสียงลูกจะตื่นบ่อยขึ้น ลืมตาและหลับตาบ่อยขึ้น ถ้าเป็นเพศหญิง แคมยังไม่ได้ปิดปุ่มกระสันจึงทำให้ดูเด่นอยู่'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'เมื่อคุณตัวใหญ่ขึ้นอาจจะทำอะไรได้ช้าลงและงุ่มง่ามขึ้นด้วย จำไว้ว่าให้รักษาท่าให้ดีเมื่อยืนหรือนั่ง โดยเฉพาะอย่างยิ่งอย่าลืมตะแคงตัวก่อนลุกจากเตียงเสมอ (จากท่านอนหงาย ไม่ใช่นอนคว่ำ) เนื่องจากกล้ามเนื้อท้องได้ยืดออกและหย่อนลงเพื่อประคับประคองมดลูกที่กำลังโตขึ้น'
                                              ' เนื่องจากการตื่นบ่อยในเวลากลางคืนเพื่อถ่ายปัสสาวะอาจมีส่วนให้ล้ามากขึ้นเรื่อยๆ พยายามพักผ่อนให้มากๆ ในช่วงกลางวันและเข้านอนแต่หัวค่ำ ดื่มนมอุ่นๆ ด้วยก็ได้ (ซึ่งช่วยให้นอนหลับได้ดี)'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/30.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/31.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 31", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'ตอนนี้ลูกจะมีความยาวจากศีรษะถึงก้นอยู่ที่ประมาณ 28 ซม. และจะหนักประมาณ 1.4 กก. ถ้าลูกเกิดมาขณะนี้จะมีโอกาศรอดชีวิตได้มากขึ้นเนื่องจากปอดสามารถพองตัวอย่างเหมาะสมมากขึ้นเพราะขณะนี้ยังมีสารลดแรงดึงผิวที่ช่วยปกป้องมากขึ้น (แม้มีไม่เพียงพอ) น้ำหนักและการเติบโตของสมองยังคงเพิ่มขึ้น'
                                                ' ลูกเจริญเติบโตเกือบเต็มที่แล้วยกเว้นปอดและทางเดินอาหาร ตามีสารสีแม้ว่าจะยังไม่มราบสีสุดท้ายจนกว่าลูกจะอายุ 6-9 เดือน เปลือกตาเปิดในเวลาที่มีกิจกรรมและปิดเวลาหลับเช่นเดียวกับที่จะเป็นในชีวิตจริงเลือดของคุณไหลผ่านผนังมดลูกเกือบ 450 มล. และเลือกของลูกก็ไหลผ่านเข้ามาใกล้มากกับหลอดเลือดฝอยของรกที่นำเลือดของลูก แม้ว่าเลือกทั้งสองจะไม่เคยผสมกัน แต่ก็แยกกันด้วยผนังบางมากเท่านั้น เรียกว่า บริเวณขวางกั้นของรก ซึ่งน้ำ สารอาหาร และของเสียแลกเปลี่ยนผ่านกันไปมา'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                           'อาการปวดหลังอาจยังคงเป็นปัญหาเนื่องจากเอ็นและกล้ามเนื้อที่พยุงหลังคลายและหย่อนเพื่อเตรียมพร้อมทำงานหนักในกระบวนการคลอด เนื่องจากสมดุลร่างกายได้รับผลการกระทบจึงควรระมัดระวังเป็นพิเศษเมื่อปีนบันได เดินบนพื้นไม่เรียบ และเมื่อออกไปอยู่ในอากาศที่เปียกและลื่นน้ำหนักที่เพิ่มขึ้นเฉลี่ยสำหรับสตรีตนหนึ่ง'
                                               ' ณ เวลานี้สำหรับการตั้งครรภ์เดี่ยวคือ 8.6 กก. ประกอบด้วยน้ำหนักทารกในครรภ์ รก น้ำคร่ำ เต้านมและมดลูกที่ใหญ่ขึ้นปริมาณเลือดและไขมันสะสมเพิ่มขึ้น โปรตีน และน้ำคุณควรคิดตั้งชื่อลูกได้แล้ว และอาจจะประกาศให้ผู้อื่นทราบก็ได้ถ้าต้องการ'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/31.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/32.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 32", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'ตอนนี้ลูกจะมีความยาวจากรอบศีรษะถึงก้นอยู่ที่ประมาณ 29 ซม. และจะหนักประมาณ 1.8 กก. ประสาทสัมผัสทั้งหมดสมบรูณ์และทำงานได้ดี แขน ขา และร่างกายสมบรูณ์ขึ้น ขณะนี้ร่างกายได้สัดส่วนกับขนาดศีรษะ ผลและเล็บเท้ายังคงงอกต่อ ปอดและทางเดินอาหารยังคงเจริญต่อไป ลูกจะฝึกหายใจซึ่งทำให้ปอดแข็งแรงและพัฒนาขึ้น'
                                                ' ลูกจะฝึกหายใจซึ่งทำให้ปอดแข็งแรงและพัฒนาขึ้น ถ่ายปัสสาวะจากกระเพาะปัสสาวะได้อย่างมีประสิทธิภาพ จนถึงเวลานี้ศีรษะควรกลับลงมาด้านล่างมดลูกแล้วโดยการกดฐานเชิงกรานของคุณเพื่อเตรียมคลอด ซึ่งอาจทำให้ลูกสามารถเตะเข้าซี่โครงของคุณได้ลูกนอนหลับร้อยละ 90 -95 ของวัน (และอาจฝันด้วย) ลูกตาเคลื่อนไหวอยู่หลังเปลือกตาที่ปิด ถ้าเป็นเพศชาย อัณฑะทั้ง 2 ลูกได้เคลื่อนลงมาอยู่ในถุงอัณฑะแล้ว'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                           'สัปดาห์นี้มดลูกที่กำลังใหญ่ขึ้นอาจกระตุ้นให้เกิดปัญหาใหม่ ลูกอาจกลับศีรษะลงแล้วและตัวใหญ่พอที่จะมีความยาวถึงซี่โครงของคุณ แรงดันบนซี่โครงทำให้คุณเจ็บได้โดยเฉพาะถ้าเท้าของลูกติด หลีหเลี่ยงสถานณการณ์ที่ทำให้รู้สึกไม่สบายนี้ โดยการนั่งตัวตรงให้บ่อยที่สุดเท่าที่จะเป็นได้อวัยวะของคุณเคลื่อนจากตำแหน่งปกติเล็กน้อยได้แต่มักไม่น่าเป็นห่วง อย่างไรก็ตามการคลั่งสารน้ำอาจเป็นปัญหา ทำให้เกิดเส้นเลือดขอด '
                                               'ข้อเท้าและนิ้วเท้าบวมได้ ให้ถอดแหวนออกให้หมดถ้ารู้สึกคับและอย่าสวมเสื้อผ้าที่คับเกินไป ให้รับประทานสารเสริมสำหรับสตรีมีครรภ์ต่อไป เพราะขณะนี้ความต้องการวิตามินและแร่ธาตุของลูกเพิ่มสูงขึ้น คิดในแง่บวกไว้ว่าอีกเพียง 8 สัปดาห์ คุณจะได้พบกับลูกน้อยคนพิเศษแล้ว'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/32.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/33.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 33", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'ตอนนี้ลูกจะมีความยาวจากศีรษะถึงก้นจะอยู่ที่ประมาณ 30 ซม. และจะหลับประมาณ 2 กก. ลูกจะยังหลับเป็นส่วนใหญ่และเกิดความฝันมากมาย โดยตัวถูกจำกัดอยู่ในมดลูกแคบๆ เมื่อตื่นจะตื่นตัวอย่างเงียบๆ ลูกจะฟังและอาจแม้แต่เห็นรูปร่างสลัวๆ แต่ที่สำคัญที่สุดคือ การเรียนรู้เนื่องจากเซลล์ประสาทหลายล้านล้านเซลล์ในสมองสร้างการประสานหลายล้านล้านล้านจุดทีเดียว ลูกเคลื่อนไหวตลอดเวลา '
                                                'จนถึงเวลานี้การเคลื่อนไหวยังคงเป็นการเตะและชกกระดูกพัฒนาเต็มที่ แต่อ่อนนุ่ม ลูกกำลังสะสมธาตุเหล็ก แคลเซียม และฟอสฟอรัสไว้ใช้พัฒนากระดูกต่อไป กลไกควบคุมอุณหภูมิร่างกาย คือ ไฮโพทาลามัส เริ่มทำงานในสมอง แต่ถ้าเกิดมาในขณะนี้ก็ยังจำเป็นต้องอยู่ในตู้อบเพื่อให้อุ่นมากพอ และแม้ว่าจะเคลื่อนไหวเป็นจังหวะหายใจ แต่ปอดยังเจริญไม่เต็มที่ถ้าเกิดมาจะหายใจได้ลำบากขณะนี้ตัวอ้วนขึ้น ผิวหนังมีสีชมพู และลูกควรอยู่ในท่าพร้อมเกิด แพทย์หรือนางผดุงครรภ์ (และตัวคุณ) อาจบอกได้ว่าทารกในครรภ์กำลังหันไปทางใด'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'ปริมาณของมดลูกได้เพิ่มขึ้น 500 เท่าจากการตั้งครรภ์และน้ำคร่ำอยู่ที่ระดับสูงสุด ภาวะเลือดจางทางสรีรวิทยาเริ่มบรรเทาเนื่องจากผลิตเม็ดเลือดแดงตามการผลิตพลาสมาทัน คุณอาจเกิดความฝันที่แปลกประหลาดและจำเป็นต้องถ่ายปัสสาวะบ่อยขึ้น ถ้าลูกอยู่ในท่าศีรษะลงแล้วคุณอาจจะหายใจได้ไม่สะดวกขึ้น และอาการอาหารไม่ย่อยใดๆ จะเริ่มดีขึ้น'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/33.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/34.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 34", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                           'การเจริญเติบโตของทารกในครรภ์ อายุครรภ์ 34 สัปดาห์โดยเฉลี่ย ในทารกปกติ ยาวประมาณ  45  ซม. หนักประมาณ 2,146 กรัม  ปอดพัฒนาแล้วยังไม่เต้มที่ สมองลูกรักพัฒนากได้เกือสมบูรณ์ มีไขจำนวนมากปกคลุมผิวหนัง เพือคงอุณภูมิให้ร่างกายอบอุ่น เมื่ออายุครรภ์มากขึ้น ไขต่างๆจะลดลง หากทารกคลอดในสัปดาห์ที่34 โอกาสรอดชีวิตสูง แต่อาจพบความผิดปกติของการหายใจ เนื่องจากสารเคลือบปอดยังสร้างไม่สบูรณ์'
                                               ' ส่งผลต่อกาแลกเปลี่ยนก๊าซออกซินเจนไม่มีประสิทธิภาพ ทารกที่คลอด อาจต้องใช้ออกซิเจนบำบัด'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            '34 สัปดาห์ - 36 สัปดาห์ เป็นช่วงเวลาที่ร่างกายของคุณแม่ มีปริมาณน้ำคร่ำมากที่สุด การเพิ่มของน้ำคร่ำ และขนาดของทารกที่โตมากขี้ ทำให้ท้องแม่โตมาก จึงเกิดอาการคล้ายสะดือจุ่นได้ เริ่มมีเจ็บครรภ็เตือน คุณแม่ต้องรู้เกี่ยวกับ เจ็บครรภ์จริง เจ็บครรภ์เตือน '
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/34.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/35.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 35", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                           'การเจริญเติบโตของทารกในครรภ์อายุครรภ์ 35 สัปดาห์โดยเฉลี่ย ในทารกปกติ ทารกยาวประมาณ 46.2  ซม. หนักประมาณ 2,383 กรัม มีการเปลี่ยนแปลงต่างๆที่สมบูรณ์ขึ้น ได้แก่ ไต พัฒนาเต็มที่ สามารถขับของเสียได้อย่างมีประสิทธิภาพ  และตับพัฒนาเต็มที่เช่นกัน '
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                           'อายุครรภ์ 35 สัปดาห์ขึ้นไป คุณแม่หลายๆคนต่างสังเกตได้ว่า เจ้าตัวน้อยของคุณนิ่งมากขึ้น อย่างที่ทราบค่ะ การดิ้นของลูกเป็นสิ่งเดียวทีีสื่อสารกับแม่ได้ว่า ลูกยังมีชีวิตอยู่ ดังนั้น การนับลูกดิ้นยังคงต้องทำอยู่เสมอ หลายคนที่ต้องร้องให้ไปพบแพทย์ที่โรงพยาบาล เพราะลูกเริ่มนิ่งมากขึ้น โดยปกติแล้วแม่ต้องจับให้ได้ว่าลูกดิ้น ทุกๆ 2 ชั่วโมง เป็นจำนวน10 ครั้ง '
                                               'หากลูกดิ้นน้อยกว่า10 ครั้ง ให้นับต่ออีกในชั่วโมงที่3 หากดิ้นน้อยเช่นเดิม ควรรีบปรึกษาแพทย์ที่โรงพยาบาล อย่ารอจนลูกไม่ดิ้นหลายๆชั่วโมง เพราะลูกอาจเสียชีวิตแล้ว '
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/35.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/36.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 36", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'การเจริญเติบโตของทารกในครรภ์อายุครรภ์ 36สัปดาห์ ทารกยาวประมาณ 47.4 ซม. หนักประมาณ2,622 กรัม และมีการเจริญเติบโตของอวัยวะต่างๆที่ชัดเจนสำหรับสัปดาห์นี้ค่ะมีไขมันสระสมใต้ผิวหนัง ทำให้ผิวทารกละเอียดนุ่ม แก้มยุ้ยไข ที่เคลือบอยู่บนผิวทารกจะลดลง เด็กบางคนอาจมีไขมากน้อยแตกต่างกันสามารถเคลื่อนไหวมือและเล็บได้'
                                                ' เเละมีการงอกของเล็บเด็กชาย ลูกอัณฑะจะเคลือนลงในถุงอัณฑะเป็นปกติแล้ว ส่วนเด็กหญิงจะมีเนื้อที่เต้านมทารกอาจมีการถ่ายขี้เทา หรือทางการเเพทย์เรียกว่า Mecconium เป็นอุจาระที่มีสีเขียวขี้ม้าเข้ม จากการกลืนกนน้ำคร่ำเข้าไปปอดและหัวใจทำงานได้อย่างมีประสิทธิภาพแล้ว เมื่อตรวจวัดด้วยเครื่องมือแพทย์ พบว่า ทารกจะมีอัตราการเต้นหัวใจอยู่ที่110 - 140  ครั้ง/ นาที '
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'อายุครรภ์ 36สัปดาห์ น้ำหนักคุณแม่เพิ่มขึ้นมากน้ำหนักทั้งหมด มาจากลูก 38% ส่วนของเลือดและของเหลวที่เพิ่มขึ้น 22% ส่วนของมดลูก เต้านม ก้นและขา ที่ขยายใหญ่ขึ้น 20% เป็นน้ำหนักของน้ำคร่ำ 11% และ อีก 9% เป็นน้ำหนักของรก การเปลี่ยนแปลงที่พบได้มีดังนี้คุณแม่อาจมีอาการจุกแน่นหน้าอก เนื่องจากทารกมีขนาดโตขึ้น จึงเบียดกระบังลมของแม่ ในบางครั้งทำให้คุณแม่มีลักษณะหายใจไม่อิ่ม แน่นหน้าอกงดเดินทางใกล หากมีความจำเป็นต้องเดินทางไปต่างจังหวัดให้นำสมุดฝากครรภ์ไปด้วยผิวหนังแห้งตึง'
                                                ' จากการยืดขยาดของผนังหน้าท้อง ควรงดอาบน้ำอุ่น และควรทาโลชั่นที่มีความชุ่มชื้นสูง หรือน้ำมันมะพร้าวบริสุทธิ์ หรือ น้ำมันมะกอกบริสุทธิ์พักผ่อนให้มากขึ้น ลดและหลีกเลี่ยงจากสิ่งที่ทำให้เครียด เพราะความเครียดกระตุ้นให้มดลูกบีบรัดตัว ทำให้คีลอดก่อนกำหนดได้เพื่อลดการคลอดก่อนกำหนด คุณแม่ควรทำจิตให้ผ่อนคลายอยู่เสมอ เช่น ร้องเพลง ฟังเพลง ดูรูปเด็กน่ารัก Mama expert เป็นกำลังใจให้คุณแม่ทุกคนค่ะ '
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/36.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),           //36

              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/37.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 37", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                           'สัปดาห์ที่ 37 นับเป็นสัปดาห์แรก ที่ทางการแพทย์จัดให้อยู่ในทารกน้อยมีอาุครรภ์ครบกำหนด ( อายุครรภ์ครบกำหนดทางการแพทย์คือ อายุครรภ์37 -42 สัปดาห์ ) หากคลอดในช่วงอายุครรภ์ที่37 สัปดาห์เป็นต้นไป ส่วนมากแล้วปลอดภัย เพราะทารกมีระบบการทำงานของปอดที่แข็งแรง และอวัยๆทุกส่วนพร้อมทำงานภายนอกท้องคุณแม่แล้วคุณแม่อุ้ยอ้ายเหลือเกินเพราะทารกในครรภ์เจริญเติบโตเต็มที่'
                                               ' ลำตัวของลูกอาจกดทับเส้นประสาท และเส้นเลือดบางจุด ทำให้การไหลเวียนสารน้ำในร่างกายไม่คลอ่งตัว  สังเกตได้จากการนั่งท่าเดียว หรือยืนนานๆ ทำให้ขาบวม เท้าบวมได้ นอกจากนี้ ตัวของลูกยังไปดันกระเพราะอาหารของแม่ คุณแม่จึงมักมีอาการกรดไหลย้อน แสบกลางยอดอก และมีอาการท้องอืดได้ การดูแลตนเองของคุณแม่ จึงควรรับประทานอาหารทีละน้อย เน้นอาหารย่อยง่ายเช่นเนื้อปลา เปลี่ยนท่านั่งบ่อยๆ ไม่ควรยืนนานหรือเดินทางไกลในช่วงอายุครรภ์นี้ค่ะ'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                           'สัปดาห์ที่ 37 นับเป็นสัปดาห์แรก ที่ทางการแพทย์จัดให้อยู่ในทารกน้อยมีอาุครรภ์ครบกำหนด ( อายุครรภ์ครบกำหนดทางการแพทย์คือ อายุครรภ์37 -42 สัปดาห์ ) หากคลอดในช่วงอายุครรภ์ที่37 สัปดาห์เป็นต้นไป ส่วนมากแล้วปลอดภัย เพราะทารกมีระบบการทำงานของปอดที่แข็งแรง และอวัยๆทุกส่วนพร้อมทำงานภายนอกท้องคุณแม่แล้วคุณแม่อุ้ยอ้ายเหลือเกินเพราะทารกในครรภ์เจริญเติบโตเต็มที่ ลำตัวของลูกอาจกดทับเส้นประสาท และเส้นเลือดบางจุด ทำให้การไหลเวียนสารน้ำในร่างกายไม่คลอ่งตัว  '
                                               'สังเกตได้จากการนั่งท่าเดียว หรือยืนนานๆ ทำให้ขาบวม เท้าบวมได้ นอกจากนี้ ตัวของลูกยังไปดันกระเพราะอาหารของแม่ คุณแม่จึงมักมีอาการกรดไหลย้อน แสบกลางยอดอก และมีอาการท้องอืดได้ การดูแลตนเองของคุณแม่ จึงควรรับประทานอาหารทีละน้อย เน้นอาหารย่อยง่ายเช่นเนื้อปลา เปลี่ยนท่านั่งบ่อยๆ ไม่ควรยืนนานหรือเดินทางไกลในช่วงอายุครรภ์นี้ค่ะ'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/37.png',height: 80.0
                                        ),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/38.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 38", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'การเจริญเติบโตของทารกในครรภ์ โดยเฉลี่ย อายุครรภ์ 38สัปดาห์ ทารกยาวประมาณ 37-38 ซม. หนักประมาณ 3,100 กรัม - ขณะนี้รกเริ่มแก่ เนื่องจากบทบาทในการปกป้องรักษาลูกได้มาถึงจุดสุดท้ายจะมีประสิทธิภาพในการถ่ายโอนสารอาหารน้อยลง ลิ่มเลือกและแผ่นมีแคลเซียมมาเกาะเริ่มปรากฏให้เห็นเมื่อสแกนผ่านคลื่นเสียงความถี่สูง ขนอ่อนตามร่างกายเริ่มหลุดร่วง แสดงให้เห็นถึงการเตรียมความพร้อมที่จะออกมาสู่โลกภายนอก การเคลื่อนไหวน้อยลงเพราะกลับหัวแล้วพื้นที่ในครรภ์ถูกจำกัด  หากทารกอยู่ในท่าก้น '
                                                'สูติแพทย์จะพิจารณาลองหมุนเปลี่ยนท่าทารกจากท่าก้นให้เป็นท่าศีรษะเตรียมพ้อมต่อการคลอด  คุณแม่จึงควรต้องหมั่นสังเกตนับการดิ้นของลูก หากลูกไม่ดิ้น ควรรีบพบแพทย์ทันที '
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'นอกจากจะปวดต่างๆมากขึ้นแล้ว โดยเฉพาะหัวหน่าว คุณแม่ยังปัสสาวะบ่อยมากด้วยในช่วงอายุครรภ์ 38 สัปดาห์นี้เนื่องจาก เป็นช่วงเวลาที่ลูกกลับหัวลงสู่เชิงกราน คุณแม่หลายคนอาจสังเกตได้ชัดเจนว่า ความสูงของยอดมดลูกลดต่ำลง หรือ ภาษาทั่วไปเรียกว่า ท้องลด  การกลับเปลี่ยนท่าเตรียมคลอดศีรษะของลูกไปกดทับกระเพาะปัสสาวะของคุณแม่พื้นที่ในการเก็บน้ำปัสสาวะในกระเพาะปัสสาวะลดลง  '
                                                'ส่งผลให้คุณแม่ปัสสาวะบ่อย การดื่มน้ำกลางคืน ทำให้ต้องลุกเข้าห้องน้ำบ่อยครั้ง เสี่ยงต่อการหน้ามืดเป็นลม จากการผุดลุกผุดนั่ง และนอนหลับพักผ่อนไม่เพียงพออีกด้วยเพราะฉะนั้นควรลดการดื่มน้ำช่วงค่ำ และงดดื่มน้ำก่อนเข้านอนค่ะ '
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/38.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/39.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 39", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'การเจริญเติบโตของร่างกายทารกโดยเฉลี่ย ทารกยาวประมาณ 37-38 ซม. หนักประมาณ 3,250 กรัม อวัยวะทุกกส่วนสมบูรณ์ปอดเเข็งแรง สามารถออกมาหายใจได้เองภายนอกท้องแม่ ปกติทารกจะอยูในท่าเอาศีรษะลงแล้ว '
                                                'เนื่องจากพื้นที่เริ่มจำกัดแขนขาลูกแนบชิดศีรษะและลำตัวและศีรษะลูกชิดคอมดลูกของคุณแรงกดนี้ จะทำให้คอมดลูกบางลงและเปิดช่องคลอด  สำหรับทารกบางรายไม่ยอมกลับหัว อาจต้องทำการผ่าตัดคลอด '
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'คุณแม่มีความกังวลสูงมากในช่วงอายุครรภ์นี้  เพราะกลัวการคลอด อาจส่งผลต่อการหลับนอน นอนไม่หลับ ในระหว่างนี้คุณแม่ควรพักผ่อนให้มากที่สุด เพื่อที่จะได้มรแรงเบ่งคลอด ที่สำคัญบริโภคอาหารให้ครบทั้ง3 มื้อ เน้นวิตามินบี1 ช่วยให้คุณแม่ไม่เหนื่อยง่ายค่ะ '
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/39.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),
              Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/fourty/40.jpg'),
                  DraggableScrollableSheet(
                      initialChildSize: 0.7,
                      minChildSize: 0.2,
                      maxChildSize: 0.7,
                      builder: (context, scrollController){
                        return Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber[50],
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("พัฒนาการสัปดาห์ที่ 40", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                            'การเจริญเติบโตโดยเฉลี่ย ทารกยาวประมาณ 48  ซม หนักประมาณ 3,250 กรัม ทารกส่วนใหญ่กลับหัว และเริ่มเคลื่อนตัวลงสู่หนทางคลอด หรือ ช่องเชิงกรานแล้ว ทารกอาจดิ้นน้อยลงเพราะทารกมีขนาดโตคับพื้นที่ของมดลูก แต่เฉลี่ยแล้ว ทารกยังคงดิ้นชั่วโมงละ 2 -3 ครั้ง'
                                            ,style: TextStyle(color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('การเปลี่ยนแปลงของคุณแม่',style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Text(
                                          'มาถึงวันนี้แล้ว คุณแม่ตั้งตารอมาแสนนาน แน่นอนสิ่งที่คุณแม่เผชิญอยู่ คืออาจเจ็บเชิงกราน ปวดอวยวะเพศ ปวดขา ปวดบั้นเอว สารพัดปวด เป็นเพราะว่า เจ้าตัวน้อย กำลังเคลื่อนตัวลงสู่ช่องเชิงกราน คุณแม่จึงมีอาการปวดต่างๆช่วงเวลาสำคัญที่กำลังจะเกิดขึ้นนี้ คุณแม่ต้องหมั่นสังเกตุอาการเจ็บครรภ์จริง และอาการที่บ่งบอกว่า คุณแม่ต้องไปโรงพยาบาลในทันที ดังนี้มูกเลือดออกทางช่องคลอดน้ำเดิน น้ำเดินหรือถุงน้ำคร่ำแตก '
                                              'จะมีลักษณะเป็นน้ำใสๆเหมือนปัสสาวะไหลออกจากช่องคลอดเจ็บท้องคลอด หากมีอาการเจ็บมากสม่ำเสมอทุกๆ 5 นาที ไม่ต้องรอให้มีน้ำเดินหรือมูกเลือด ให้ไปโรงพยาบาลทันทีสำหรับคุณแม่ที่อายุครรภ์ 40สัปดาห์แล้วแต่ไม่มีอาการเตือนใดๆ อย่ากังวลไปนะคะ เพราะ รอได้ถึงสัปดาห์ที่42ค่ะ โดยปกติแล้ว หากเริ่มเข้าสู่สัปดาห์ที่41 สูติแพทย์ จะนัดตรวจและกระตุ้นการคลอดให้ และหากกระตุ้นแล้วไม่ไม่ความก้วหน้า คือ ไม่มีอาการเจ็บครรภ์ ขั้นตอนต่อไป คือใช้ยากระตุ้นคลอดคุณแม่ต้องนอนโรงพยาบาล และ ขั้นตอนสุดท้าย หากใช้ยาแล้วไม่ได้ผล คุณแม่จะต้องทำการผ่าตัดคลอดเป็นลำดับต่อไปค่ะ'
                                            ,style: TextStyle(color: Colors.indigo)),
                                        SizedBox(height: 20.0,),
                                        Image.asset('assets/images/home/40.png',height: 80.0),
                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset('assets/images/home/id.png',height: 55.0,),
                              top: -30,
                              right: 30,
                            )
                          ],
                        );
                      }
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
