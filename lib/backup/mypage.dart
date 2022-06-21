import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);
  String name = "トッキー", age = "26";
  @override
  State<MyPage> createState() => _MyPageState(name, age);
}

class _MyPageState extends State<MyPage> {
  String _name, _age;
  _MyPageState(this._name, this._age);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // colors: [Colors.green, Colors.tealAccent],
            colors: [
              Color.fromARGB(255, 221, 255, 221),
              Color.fromARGB(255, 129, 204, 145)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          shape: BoxShape.circle,
        ),
        child: Scaffold(
          // backgroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     // colors: [Colors.green, Colors.tealAccent],
              //     colors: [
              //       Color.fromARGB(255, 221, 255, 221),
              //       Color.fromARGB(255, 129, 204, 145)
              //     ],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //   ),
              //   shape: BoxShape.circle,
              // ),
              padding: EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage("assets/icon/nishikino_maki.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _name,
                        style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 20.0,
                          height: 2.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.blueGrey,
                        thickness: 1,
                        width: 10,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Text(
                        _age + "歳",
                        style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 20.0,
                          height: 2.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.white60,
                    thickness: 2,
                    height: 20,
                    indent: 20,
                    endIndent: 30,
                  ),
                  SizedBox(
                    height: 20 /*間隔*/,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20 /*間隔*/,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20 /*間隔*/,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Colors.green, Colors.tealAccent],
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // color: Color.fromARGB(255, 221, 255, 221)
                              //     .withOpacity(1.0),
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 5, right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.movie_outlined,
                                    size: 50.0,
                                    color: Colors.black54,
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Colors.transparent,
                                  ),
                                  Text('お悩みシート',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            leading: Icon(
              Icons.local_parking,
              color: Colors.black26,
            ),
            title: const Text('Mypage'),
            backgroundColor: Color.fromARGB(255, 129, 204, 145),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black26,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.circle_notifications_outlined,
                  color: Colors.black26,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
