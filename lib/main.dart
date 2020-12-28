import 'package:flutter/material.dart';
import 'package:flutter_tabbar/screens/FirstScreen.dart';
import 'package:flutter_tabbar/screens/FourthScreen.dart';
import 'package:flutter_tabbar/screens/SecondScreen.dart';
import 'package:flutter_tabbar/screens/ThirdScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final tabs= [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Navigation Bar'),
        ),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 20,
          selectedItemColor: Colors.greenAccent,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Mail'),
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              title: Text('Store'),
              backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
        ),
      )
    );
  }
}
