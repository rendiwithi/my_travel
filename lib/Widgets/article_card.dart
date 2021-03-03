import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_1.png',
  'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_2.png',
  'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_3.png',
  'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_4.png',
  'https://raw.githubusercontent.com/rendiwithi/my_travel/main/images/img_5.png',
];

class ArticleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 16 / 11,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          ),
        ],
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        width: 1000.0,
        margin: EdgeInsets.all(5.0),
        child: Container(
          margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Travel to Africa",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "My trip to China started in Bejing Where i stayed in a beautiful hotel called ...",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Text(
                "Leslie Alexander",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(item),
          ),
        ),
      ),
    )
    .toList();
