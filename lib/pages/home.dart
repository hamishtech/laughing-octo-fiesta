import 'package:flutter/material.dart';
import 'package:hamish_bookshelf/resources/resources.dart';

class Home extends StatelessWidget {
  Resources resources = Resources();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: resources.colors.light_primary,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Column(children: [
                  Image.network(
                      'https://purepng.com/public/uploads/thumbnail//google-stadia-logo-hd4.png'),
                  Text("BookShelfApp",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          letterSpacing: 3))
                ]),
              ),
              SizedBox(height: 70.0),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main');
                },
                child: Text("Enter App"),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    primary: Colors.white,
                    backgroundColor: resources.colors.accent,
                    onSurface: Colors.grey,
                    textStyle: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ]),
      ),
    );
  }
}
