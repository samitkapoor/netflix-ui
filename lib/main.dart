import 'package:flutter/material.dart';

import '/downloadsscreen/downloads.dart';
import '/loginscreen/loginpage.dart';
import '/comingsoonscreen/coming_soon.dart';

void main() {
  runApp(
    Netflix(),
  );
}

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        ComingSoonScreen.routeName: (context) => ComingSoonScreen(),
        Downloads.routeName: (context) => Downloads(),
      },
    );
  }
}
