import 'package:flutter/material.dart';
import 'package:my_travel/Widgets/article_card.dart';
import 'package:my_travel/Widgets/nav_bar_custom.dart';
import 'package:my_travel/views/articles.dart';
import 'package:my_travel/views/profile.dart';
import 'package:my_travel/views/search_table.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCEFE3),
      body: Stack(children: [
        NavBarCustom(),
        Container(
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ProfileWidget(),
              ),
              ArticlesView(),
              SearchTable(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: ArticleCard(),
              )
            ],
          )),
        ),
      ]),
    );
  }
}
