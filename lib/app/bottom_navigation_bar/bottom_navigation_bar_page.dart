import 'package:flutter/material.dart';
import 'package:ukraine_news/app/news/news_page.dart';

import '../support/support_list_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    NewsPage(),
    SupportListPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Support',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
