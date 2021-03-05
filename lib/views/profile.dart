import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50.0,
          height: 30.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.contain,
              image: new NetworkImage(
                  "https://images.unsplash.com/photo-1570211776091-c19f426d37af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "WELCOME BACK",
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFF321F0E),
                ),
              ),
              Text(
                "Wahyu Mahendra",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF321F0E),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
