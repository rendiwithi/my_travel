import 'package:flutter/material.dart';

import 'package:my_travel/pages/favoritePage.dart';
import 'package:my_travel/pages/homePage.dart';
import 'package:my_travel/pages/profilePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    final _selectedItemColor = Colors.black;
  final _unselectedItemColor = Colors.black45;
  final _selectedBgColor = Colors.white;
  final _unselectedBgColor = Color(0xFFFC8E12);
  int _selectedIndex = 0;

  static  List _widgetOptions = [
    HomePage(),
    FavoritePage(),
    ProfilePage(),
  ];
  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Widget _buildIcon(IconData iconData, int index) => Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          color: _getBgColor(index),
        ),
        child: InkWell(
          child: Icon(iconData),
          onTap: () => _onTappedItem(index),
        ),
      );
  ClipRRect _getBtmNavBar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
        backgroundColor: Color(0xFFFC8E12),
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.navigation, 0),
            // icon: Icon(Icons.navigation),
            label: 'navigation',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.star, 1),
            label: 'star',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person, 2),
            label: 'person',
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
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
                margin: EdgeInsets.fromLTRB(10, 50, 10, 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFC8E12),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: _getBtmNavBar(),
                //
              ),
            ),
          ),
           _widgetOptions.elementAt(_selectedIndex),
        ],
      ),
    );
  }
}
