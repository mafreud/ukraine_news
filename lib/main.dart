import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/bottom_navigation_bar/bottom_navigation_bar_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ukraine News',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF051367),
      ),
      home: const BottomNavigationBarPage(),
    );
  }
}
