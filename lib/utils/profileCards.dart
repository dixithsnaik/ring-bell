import 'package:flutter/material.dart';
import 'package:ui_practice/utils/info.dart';
import 'package:ui_practice/utils/profile.dart';

class ProfileCards extends StatelessWidget {
  const ProfileCards({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, index) {
        if (info[0] == true) {
          return Proflie(name: info[index]['name'], url: info[index]['url']);
        }
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/13.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Poppins",
                color: Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }
}
