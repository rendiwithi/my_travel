import 'package:flutter/material.dart';
import 'package:my_travel/pages/articlePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArticlePage(),
    );
  }
}