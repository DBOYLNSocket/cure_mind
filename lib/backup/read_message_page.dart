import 'package:bubble/bubble.dart';
import 'package:cure_mind/message.dart';
import 'package:flutter/material.dart';

//import 'package:todoapp/pages/edit_Message_page.dart';

import 'database/message_db_connect.dart';

class ReadMessagePage extends StatefulWidget {
  final int messageId;

  const ReadMessagePage({
    Key? key,
    required this.messageId,
  }) : super(key: key);

  @override
  _ReadMessagePageState createState() => _ReadMessagePageState();
}

class _ReadMessagePageState extends State<ReadMessagePage> {
  late Message message;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    loadMessage();
  }

  Future loadMessage() async {
    setState(() => isLoading = true);
    message = await MessageDBConnect.instance.readMessage(widget.messageId);
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text('Chat'),
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.tealAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: _getBubbleWidgets(message.message_list),
              ),
            ),
    );
  }

  List<Widget> _getBubbleWidgets(List<String> message_list) {
    final List<Widget> _bubbleWidgets = <Widget>[];
    _bubbleWidgets.add(SizedBox(
      width: double.infinity,
    ));
    for (String message in message_list) {
      _bubbleWidgets.add(
        Bubble(
          margin: BubbleEdges.all(10),
          color: Colors.lightGreenAccent[200],
          nip: BubbleNip.leftTop,
          alignment: Alignment.centerLeft,
          elevation: 5,
          child: Text(
            "$message",
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
        ),
      );
    }
    return _bubbleWidgets;
  }
}
