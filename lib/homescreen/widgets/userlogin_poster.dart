import 'package:flutter/material.dart';

class UserLoginStack extends StatelessWidget {
  final image;
  UserLoginStack(this.image);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 3 / 4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.7,
                1,
              ],
              colors: [
                Colors.transparent,
                Colors.black,
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/netflixn.PNG',
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.cast,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
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
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 70,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'TV Shows',
                  style: TextStyle(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    fontSize: 18,
                    fontFamily: 'PTSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Movies',
                  style: TextStyle(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    fontSize: 18,
                    fontFamily: 'PTSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'My List',
                  style: TextStyle(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    fontSize: 18,
                    fontFamily: 'PTSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color.fromRGBO(230, 230, 230, 1),
                      size: 35,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'My List',
                      style: TextStyle(
                        color: Color.fromRGBO(230, 230, 230, 1),
                        fontSize: 13,
                        fontFamily: 'PTSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      'Coming soon',
                      style: TextStyle(
                        color: Color.fromRGBO(230, 230, 230, 1),
                        fontSize: 18,
                        fontFamily: 'PTSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Play',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'PTSans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(230, 230, 230, 1),
                      size: 35,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Info',
                      style: TextStyle(
                        color: Color.fromRGBO(230, 230, 230, 1),
                        fontSize: 13,
                        fontFamily: 'PTSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
