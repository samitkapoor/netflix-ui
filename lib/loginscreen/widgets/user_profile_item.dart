import 'package:flutter/material.dart';

import '/homescreen/user_screen.dart';

class User extends StatelessWidget {
  final String name;
  final String image;

  User({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => UserLoginScreen(
                  image: image,
                  name: name,
                ),
              ),
            );
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'PTSans',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
