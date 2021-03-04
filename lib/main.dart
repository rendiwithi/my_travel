import 'package:flutter/material.dart';
import 'package:my_travel/demo/stack_tes.dart';
import 'package:my_travel/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackTest(),
    );
  }
}