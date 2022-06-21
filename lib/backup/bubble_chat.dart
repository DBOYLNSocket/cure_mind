import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class BubbleChatPage extends StatefulWidget {
  BubbleChatPage({Key? key}) : super(key: key);
  @override
  _BubbleChatPageState createState() => _BubbleChatPageState();
}

class _BubbleChatPageState extends State<BubbleChatPage> {
//ソース
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Center(
            child: Text('Chat'),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.tealAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
              ),
              Bubble(
                margin: BubbleEdges.all(10),
                color: Colors.lightGreenAccent[200],
                nip: BubbleNip.leftTop,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
              Bubble(
                margin: BubbleEdges.all(10),
                color: Colors.lightGreenAccent[200],
                nip: BubbleNip.rightTop,
                alignment: Alignment.centerRight,
                elevation: 5,
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
              Bubble(
                margin: BubbleEdges.all(10),
                color: Colors.lightGreenAccent[200],
                nip: BubbleNip.leftTop,
                alignment: Alignment.centerLeft,
                elevation: 5,
                child: Text(
                  "ご相談があります。"
                  '気持ちの切り替えの方法を教えてほしいです。',
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
