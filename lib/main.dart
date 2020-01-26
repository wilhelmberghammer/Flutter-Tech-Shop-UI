import 'package:flutter/material.dart';

import 'screens/homepage.dart';
import 'screens/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color(0xFFF2F2F2),
        textSelectionColor: Color(0xFF333333),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  List _pageOptions = [
    HomePage(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 27,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 27,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
        currentIndex: _currentPage,
        onTap: (index){
          setState(() {
            _currentPage = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){},
        child: Icon(Icons.shopping_cart, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
