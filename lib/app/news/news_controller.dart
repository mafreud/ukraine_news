import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ukraine_news/app/firebase/cloud_firestore/firestore_path.dart';
import 'package:ukraine_news/app/news/news.dart';

import '../firebase/cloud_firestore/cloud_firestore_service.dart';

final newsStreamProvider = StreamProvider<List<News>>((ref) {
  final firestore = ref.watch(cloudFirestoreServiceProvider);
  return firestore.collectionStream(
    path: FirestorePath.newsDomain,
    builder: (data, _) => News.fromMap(data),
  );
});
