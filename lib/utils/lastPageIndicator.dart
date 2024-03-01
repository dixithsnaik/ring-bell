import 'package:flutter/material.dart';

class LastPageIndicator extends StatelessWidget {
  const LastPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 500),
            width: index == 5 ? 40 : 10,
            height: 10,
            decoration: BoxDecoration(
              color: index == 0
                  ? Colors.white
                  : const Color.fromARGB(100, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
