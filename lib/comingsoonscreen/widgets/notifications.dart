import 'package:flutter/material.dart';

import '/data.dart';

class NotificationsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      color: Colors.white10,
      child: Column(
        children: [
          ...Data().notifications.map((e) {
            return Container(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 4,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 7, 20, 7),
                    height: 66,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(e['image'].toString()),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e['headText'].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PTSans',
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        e['midText'].toString(),
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontFamily: 'PTSans',
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        e['time'].toString(),
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 16,
                          fontFamily: 'PTSans',
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
