import 'package:cloud_firestore/cloud_firestore.dart';

class News {
  News({
    required this.documentId,
    required this.title,
    required this.url,
    required this.publishedAt,
  });

  String documentId;
  String title;
  String url;
  Timestamp publishedAt;

  factory News.fromMap(Map<String, dynamic> data) => News(
        documentId: data['documentId'],
        title: data['title'],
        url: data['url'],
        publishedAt: data['publishedAt'],
      );

  Map<String, dynamic> toMap() => {
        'documentId': documentId,
        'title': title,
        'url': url,
        'publishedAt': publishedAt,
      };
}
