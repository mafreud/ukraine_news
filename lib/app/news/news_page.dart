import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import "dart:convert";

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ニュース'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const Card(
            child: ListTile(
              leading: Icon(Icons.south_america),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
          );
        }),
      ),
    );
  }
}
