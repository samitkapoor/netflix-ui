import 'package:flutter/material.dart';

import '/homescreen/widgets/bnb.dart';
import '/commonwidgets/suggestions.dart';
import '/homescreen/widgets/continuewatching.dart';
import '/homescreen/widgets/userlogin_poster.dart';
import '/data.dart';

class UserLoginScreen extends StatelessWidget {
  final image;
  int _selectedIndex = 0;
  final name;

  UserLoginScreen({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 3 / 4.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/constantine.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: UserLoginStack(image),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: FittedBox(
                child: Text(
                  'Continue Watching for $name',
                  style: TextStyle(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    fontSize: 25,
                    fontFamily: 'PTSans',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: 10),
            ContinueWatchingWidget(),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: FittedBox(
                child: Text(
                  'Watch It Again',
                  style: TextStyle(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    fontSize: 23,
                    fontFamily: 'PTSans',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: 10),
            SuggestionsWidget(Data().watchItAgain),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: FittedBox(
                child: Text(
                  'Trending Now',
                  style: TextStyle(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    fontSize: 23,
                    fontFamily: 'PTSans',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: 10),
            SuggestionsWidget(Data().trending),
          ],
        ),
      ),
      bottomNavigationBar: BNB(image),
    );
  }
}
