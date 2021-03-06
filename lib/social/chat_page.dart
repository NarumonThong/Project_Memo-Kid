import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE082),
        title: (Text("แชท")),
      ),
      body: ListView(
        children: <Widget>[
          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),

          chatList(
            userImage: 'https://i.pravatar.cc/',
            userName: 'Demo Test',
            chatText: 'Hello World',
            timeSend: '12.30',
          ),
        ],
      ),
    );
  }
}



Widget chatList({
  userImage,
  userName,
  chatText,
  timeSend,
}) {
  return Container(
    padding: EdgeInsets.only(top: 20.0, left: 20.0),
    child: Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    userImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(width: 20.0,),

            Column(
              children: <Widget>[
                Text(
                  userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4,),

                Text(
                  chatText,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  timeSend,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
