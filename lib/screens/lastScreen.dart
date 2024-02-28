import 'package:flutter/material.dart';
import 'package:ui_practice/screens/secondScreen.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1A1819),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.5),
                shape: BoxShape.circle,
                color: const Color.fromARGB(30, 255, 255, 255),
              ),
              child: IconButton(
                padding: const EdgeInsets.all(24),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
