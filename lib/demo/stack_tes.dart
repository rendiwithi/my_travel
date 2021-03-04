import 'package:flutter/material.dart';

class StackTest extends StatefulWidget {
  @override
  _StackTestState createState() => _StackTestState();
}

class _StackTestState extends State<StackTest> {
  final _selectedItemColor = Colors.black;
  final _unselectedItemColor = Colors.black45;
  final _selectedBgColor = Colors.white;
  final _unselectedBgColor = Color(0xFFFC8E12);
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = [
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Fav',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
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
                decoration: BoxDecoration(
                  color: Color(0xFFFC8E12),
                  borderRadius: BorderRadius.circular(45),
                ),
                margin: EdgeInsets.fromLTRB(10, 30, 10, 35),
                child: _getBtmNavBar(),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.all(Radius.circular(radius))
                //           ),
                //           child: BottomNavigationBar(
                //             showSelectedLabels: false,
                //             showUnselectedLabels: false,
                //             currentIndex: _selectedIndex,
                //             selectedItemColor: _selectedItemColor,
                //             unselectedItemColor: _unselectedItemColor,
                //             backgroundColor: Color(0xFFFC8E12),
                //             items: [
                //               BottomNavigationBarItem(
                //                 icon: _buildIcon(Icons.navigation, 0),
                //                 // icon: Icon(Icons.navigation),
                //                 label: 'navigation',
                //               ),
                //               BottomNavigationBarItem(
                //                 icon: _buildIcon(Icons.star, 1),
                //                 label: 'star',
                //               ),
                //               BottomNavigationBarItem(
                //                 icon: _buildIcon(Icons.person, 2),
                //                 label: 'person',
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
              ),
              //   Center(
              // child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: _selectedItemColor,
      //   unselectedItemColor: _unselectedItemColor,
      //   backgroundColor: Colors.orange,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: _buildIcon(Icons.navigation, 0),
      //       // icon: Icon(Icons.navigation),
      //       label: 'navigation',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: _buildIcon(Icons.star, 1),
      //       label: 'star',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: _buildIcon(Icons.person, 2),
      //       label: 'person',
      //     ),
      //   ],
      // ),
    );
  }
}
