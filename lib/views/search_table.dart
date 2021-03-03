import 'package:flutter/material.dart';

class SearchTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.07,
            margin: EdgeInsets.fromLTRB(20, 0, 8, 0),
            decoration: BoxDecoration(
              color: Color(0xFFFAE5D2),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFFEDA47E),
                    ),
                    hintText: "Search country or list",
                    hintStyle: TextStyle(color: Color(0xFFEDA47E)),
                    border: InputBorder.none),
              ),
            )),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
            color: Color(0xFFFAE5D2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: Icon(
              Icons.toc,
              color: Color(0xFFEDA47E),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
