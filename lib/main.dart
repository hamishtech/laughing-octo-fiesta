import 'package:flutter/material.dart';
import 'package:hamish_bookshelf/pages/home.dart';
import 'package:hamish_bookshelf/pages/search.dart';
import 'package:hamish_bookshelf/pages/book.dart';
import 'package:hamish_bookshelf/pages/results.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      routes: {
        '/main': (context) => SearchPage(),
        '/results': (context) => Results(),
        '/book': (context) => Book(),
      },
    );
  }
}
