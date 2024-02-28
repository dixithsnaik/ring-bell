import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/utils/button.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlurryContainer(
      blur: 3,
      height: 80,
      width: size.width * 0.95,
      color: const Color.fromARGB(100, 255, 255, 255),
      borderRadius: BorderRadius.circular(80),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Button(
            color: Colors.white,
            size: 70,
            icon: Icon(
              Icons.home_rounded,
              size: 36,
              color: Colors.black,
            ),
          ),
          Button(
            color: Colors.transparent,
            bordercolor: Colors.transparent,
            size: 70,
            icon: Icon(
              Icons.key_rounded,
              size: 36,
              color: Color.fromARGB(150, 255, 255, 255),
            ),
          ),
          Button(
            color: Colors.transparent,
            bordercolor: Colors.transparent,
            size: 70,
            icon: Icon(
              Icons.calendar_view_month,
              size: 36,
              color: Color.fromARGB(150, 255, 255, 255),
            ),
          ),
          Button(
            color: Colors.transparent,
            bordercolor: Colors.transparent,
            size: 70,
            icon: Icon(
              Icons.content_copy,
              size: 36,
              color: Color.fromARGB(150, 255, 255, 255),
            ),
          ),
          Button(
            color: Colors.transparent,
            bordercolor: Colors.transparent,
            size: 70,
            icon: Icon(
              Icons.celebration_outlined,
              size: 36,
              color: Color.fromARGB(150, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
