  import 'package:app_latihan1/framesizeauto.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Latihan pertama',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePageAuto(

        ),
      );
    }
  }
