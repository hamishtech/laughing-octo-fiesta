import 'package:flutter/material.dart';
import 'package:hamish_bookshelf/resources/resources.dart';

class Book extends StatelessWidget {
  Resources resources = Resources();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('book result')), // insert book name here
      body: SafeArea(
        child: Center(
          child: Column(children: [Text("Book card - expanded")]),
        ),
      ),
    );
  }
}
