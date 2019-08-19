import 'package:flutter/material.dart';
import 'package:flutter_app/routers/homePage.dart';
import 'package:flutter_app/routers/minePage.dart';

class BaseLayout extends StatefulWidget {
  @override
  _BaseLayoutSate createState() => _BaseLayoutSate();
}

class _BaseLayoutSate extends State<BaseLayout> {
  List _pages = <Widget>[HomePage(title: '首页导航'), MinePage(title: '我的导航')];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.mood)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
