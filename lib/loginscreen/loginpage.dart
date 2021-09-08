import 'package:flutter/material.dart';

import '../data.dart';
import '/loginscreen/widgets/user_profile_item.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/netflixlogo.png',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Who\'s Watching?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: 'PTSans',
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 2 / 3,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  mainAxisSpacing: 15,
                ),
                children: [
                  ...Data().userProfiles.map((e) {
                    return User(
                        name: e['name'].toString(),
                        image: e['image'].toString());
                  }).toList(),
                ],
                shrinkWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
