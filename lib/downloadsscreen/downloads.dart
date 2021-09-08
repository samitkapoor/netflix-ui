import 'package:flutter/material.dart';

import '/downloadsscreen/widgets/bnb.dart';
import '/downloadsscreen/widgets/downloadscard.dart';

class Downloads extends StatelessWidget {
  static const routeName = '/downloads';
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    final image = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Downloads',
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
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.settings, color: Colors.white30, size: 16),
                    SizedBox(width: 5),
                    Text(
                      'Smart Downloads',
                      style: TextStyle(
                        color: Colors.white30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PTSans',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Introducing Downloads for You',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSans',
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'We\'ll download a personalised selection of movies and shows for you, so there\'s always something to watch on your phone.',
                    style: TextStyle(
                      color: Colors.white30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSans',
                      fontSize: 16,
                    ),
                  ),
                ),
                DownloadsCard(),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'SET UP',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'PTSans',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Find more to download',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'PTSans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BNB(image));
  }
}
