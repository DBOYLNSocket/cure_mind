import 'package:flutter/material.dart';

import 'message_list_page.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({Key? key}) : super(key: key);
  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Matching'),
    Tab(text: 'Chat'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 129, 204, 145),
        title: Center(
          child: Text('Exchange'),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String tab_text = tab.text!.toLowerCase();
          if (tab_text == "Matching") {
            return Material(
              child: MessagesPage(),
            );
          } else {
            return Material(
              child: MessagesPage(),
            );
          }
        }).toList(),
      ),
    );
  }
}
