import 'package:flutter/material.dart';

class ArticlesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
            child: Text(
              "New Articles",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                    width: 100,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Africa",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_1.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                  width: 100,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Turkey",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_2.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                  width: 100,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Italy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_3.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                  width: 100,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "West",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_4.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                  width: 100,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Japan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_5.png'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
