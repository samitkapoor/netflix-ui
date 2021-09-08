import 'package:flutter/material.dart';

import '/comingsoonscreen/widgets/bnb.dart';
import '/comingsoonscreen/widgets/notifications.dart';

class ComingSoonScreen extends StatelessWidget {
  static const routeName = '/comingsoon';

  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    String image = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Coming Soon',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PTSans',
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.cast,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  image.toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: Colors.red[900],
                      radius: 16,
                      child: Center(
                        child: Icon(
                          Icons.notifications,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PTSans',
                        letterSpacing: 1,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 20),
                NotificationsCard(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BNB(image));
  }
}
