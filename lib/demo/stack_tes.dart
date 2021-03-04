import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: 100,
            color: Colors.red,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
