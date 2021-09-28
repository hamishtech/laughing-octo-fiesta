import 'package:flutter/material.dart';

// Define a custom Form widget.
class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() {
    return _SearchFieldState();
  }
}

class _SearchFieldState extends State<SearchField> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: new InputDecoration(
                prefixIcon: new Icon(Icons.search),
                hintText: 'Search for book...'),
            onFieldSubmitted: (value) async {
              print("submitted search with $value");
            },
            textInputAction: TextInputAction.search,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          // RaisedButton(onPressed: () {
          //   print("call api with textfield");

          //   //call api with text field -> get results -> navigator push to next route
          // }),
          // // Add TextFormFields and ElevatedButton here.
        ],
      ),
    );
  }
}
