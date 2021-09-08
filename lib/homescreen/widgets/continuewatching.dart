import 'package:flutter/material.dart';

import '/data.dart';

class ContinueWatchingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      height: 205,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...Data().continueWatching.map((e) {
            return Container(
              height: 205,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                e,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                              ],
                              stops: [
                                0.8,
                                1,
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          right: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black12,
                            ),
                            height: 55,
                            width: 55,
                            child: Center(
                              child: Icon(
                                Icons.play_circle_outline_sharp,
                                color: Colors.white,
                                size: 55,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      height: 5,
                      width: 120,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(26, 26, 26, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                            child: Icon(
                              Icons.info_outline_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
