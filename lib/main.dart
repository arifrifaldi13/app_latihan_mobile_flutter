import 'package:app_latihan1/icon_gambar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

          title: 'Penampilan Icon',
          home: MyIcon(),
          debugShowCheckedModeBanner: false,
        );
  }
}