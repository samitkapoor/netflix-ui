import 'dart:math';

import 'package:flutter/material.dart';

import '/data.dart';

class DownloadsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 4,
          top: 25,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.white10,
          ),
        ),
        Positioned(
          top: 50,
          left: MediaQuery.of(context).size.width / 2 - 100,
          child: Transform.rotate(
            angle: -pi / 7,
            child: Container(
              height: 180,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            Data().trending[0].toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: MediaQuery.of(context).size.width / 2 - 100,
          child: Transform.rotate(
            angle: pi / 7,
            child: Container(
              height: 180,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            Data().trending[2].toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: MediaQuery.of(context).size.width / 2 - 55,
          child: Container(
            height: 180,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    height: 160,
                    width: 110,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          Data().trending[1].toString(),
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
