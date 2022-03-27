import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ukraine_news/app/news/news_controller.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsStream = ref.watch(newsStreamProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ニュース'),
      ),
      body: newsStream.when(
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          error: (error, _) => Text(error.toString()),
          data: (newsList) {
            return ListView.builder(
              itemCount: newsList.length,
              itemBuilder: ((context, index) {
                final news = newsList[index];
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.south_america),
                    title: Text(news.title),
                    subtitle: Text(news.publishedAt.toString()),
                  ),
                );
              }),
            );
          }),
    );
  }
}
