import 'package:flutter/material.dart';

import 'awaitfunction.dart';
import 'homePage.dart';

Future<void> main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DateAndTime(),
    );
  }
}
