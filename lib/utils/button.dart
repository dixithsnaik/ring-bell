import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Icon icon;
  final Color color;
  final Color bordercolor;
  final double size;
  final VoidCallback? onPressed;
  const Button({
    super.key,
    this.onPressed,
    required this.icon,
    this.color = const Color.fromARGB(30, 255, 255, 255),
    this.bordercolor = Colors.white,
    this.size = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor, width: 0.5),
        shape: BoxShape.circle,
        color: color,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
