import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/comingsoonscreen/coming_soon.dart';
import '/downloadsscreen/downloads.dart';

class BNB extends StatelessWidget {
  int _selectedIndex = 0;
  String image;
  BNB(this.image);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Color.fromRGBO(18, 18, 18, 1),
      ),
      child: BottomNavigationBar(
        unselectedItemColor: Color.fromRGBO(117, 117, 117, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (val) {
          _selectedIndex = val;
          if (_selectedIndex == 0) {
            Navigator.of(context).setState(() {});
          }
          if (_selectedIndex == 1) {
            Navigator.of(context)
                .pushNamed(ComingSoonScreen.routeName, arguments: image);
          }
          if (_selectedIndex == 2) {
            Navigator.of(context)
                .pushNamed(Downloads.routeName, arguments: image);
          }
        },
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              FontAwesomeIcons.play,
              size: 18,
            ),
            title: Text(
              'Coming Soon',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.download_for_offline_outlined,
              size: 24,
            ),
            title: Text(
              'Downloads',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
