import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  // List<Widget> buildBooksView(list) {
  //  return list.map((item) => Text(item['volumeInfo']['title'])).toList();
  // }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    // buildBooksView(args['results']['items']);
    return Scaffold(
      appBar: AppBar(
        title: Text("Results for ${args['searchTerm']}"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            for (var item in args['results']['items'])
              Text(item['volumeInfo']['title'])
          ],
        ),
      ), // take in results data
    );
  }
}
