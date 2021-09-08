import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/downloadsscreen/downloads.dart';

class BNB extends StatelessWidget {
  int _selectedIndex = 1;
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
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (val) {
          _selectedIndex = val;
          if (_selectedIndex == 0) {
            Navigator.of(context).pop();
          }
          if (_selectedIndex == 1) {
            Navigator.of(context).setState(() {});
          }
          if (_selectedIndex == 2) {
            Navigator.of(context)
                .popAndPushNamed(Downloads.routeName, arguments: image);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
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
