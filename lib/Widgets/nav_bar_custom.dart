import 'package:flutter/material.dart';

class NavBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFECA2F),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.22,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFC8E12),
            borderRadius: BorderRadius.circular(45),
          ),
          margin: EdgeInsets.fromLTRB(10, 60, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(45)),
                child: Icon(
                  Icons.navigation,
                  color: Color(0xFF200E32),
                  size: 24,
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(45)),
                child: Icon(
                  Icons.star,
                  size: 24,
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(45)),
                child: Icon(
                  Icons.person,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
