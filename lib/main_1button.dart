import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button rata tengah'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('tombol ditekan..');
            },
            child: Text('klik disini'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
