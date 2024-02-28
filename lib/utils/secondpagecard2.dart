import 'package:flutter/material.dart';
import 'package:ui_practice/utils/button.dart';

class SecondPageBottomCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final Color color;
  final VoidCallback? onPressed;

  const SecondPageBottomCard({
    super.key,
    this.onPressed,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 190,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Button(
            onPressed: onPressed,
            size: 70,
            icon: icon,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 15),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
