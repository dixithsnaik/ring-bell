import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ui_practice/utils/button.dart';

class LastPageMiniCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final Color color;
  final VoidCallback? onPressed;
  final bool isTick;

  const LastPageMiniCard({
    super.key,
    this.onPressed,
    required this.icon,
    required this.isTick,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 165,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  onPressed: onPressed,
                  size: 80,
                  icon: icon,
                  color: const Color.fromARGB(180, 255, 255, 255),
                ),
                isTick == true
                    ? Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(180, 255, 255, 255),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.check),
                          ),
                        ),
                      )
                    : const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                        ),
                      ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 15),
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
