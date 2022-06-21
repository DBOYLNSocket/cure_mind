import 'package:flutter/material.dart';

import 'exchange_page.dart';
import 'mypage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const String _title = 'Cure APP';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(homeTitle: "Cure Mind Home"),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required String this.homeTitle}) : super(key: key);
  String homeTitle;
  @override
  State<HomePage> createState() => _HomePageState(homeTitle);
}

class _HomePageState extends State<HomePage> {
  String homeTitle;
  _HomePageState(this.homeTitle);

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle optionStyle2 = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle2,
    ),
    ExchangePage(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text(homeTitle),
      //   ),
      // ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 221, 220, 238),
              Color.fromARGB(255, 201, 223, 236)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 129, 204, 145),
        unselectedIconTheme:
            IconThemeData(color: Colors.black26, size: 25, opacity: .5),
        unselectedLabelStyle: TextStyle(
          color: Colors.black26,
        ),
        selectedIconTheme:
            IconThemeData(color: Colors.black, size: 25, opacity: .5),
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 244, 164, 149),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Color.fromARGB(255, 129, 204, 145),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_outlined),
            label: 'Dr.List',
            backgroundColor: Color.fromARGB(255, 129, 204, 145),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind_outlined),
            label: 'MyPage',
            backgroundColor: Color.fromARGB(255, 129, 204, 145),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
