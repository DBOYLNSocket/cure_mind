import 'package:flutter/material.dart';

import 'database/message_db_connect.dart';
import 'message.dart';
import 'read_message_page.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<Message> Messages = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    loadMessages();
  }

  @override
  void dispose() {
    MessageDBConnect.instance.closeDatabase();
    super.dispose();
  }

  Future loadMessages() async {
    setState(() => isLoading = true);
    Messages = await MessageDBConnect.instance.readAllMessagesSample();
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: const Text('ToDo管理アプリ'),
      //     ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SizedBox(
              child: ListView.builder(
                itemCount: Messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message = Messages[index];
                  return Card(
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                          "assets/icon/nishikino_maki.png"),
                                    ),
                                    SizedBox(
                                      width: 20 /*間隔*/,
                                    ),
                                    Text(
                                      Message.name,
                                      style: const TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: () async {
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ReadMessagePage(messageId: Message.id!),
                          ),
                        );
                        loadMessages();
                      },
                    ),
                  );
                },
              ),
            ),
    );
  }
}
