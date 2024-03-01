import 'package:flutter/material.dart';

class Proflie extends StatelessWidget {
  final String url;
  final String name;
  const Proflie({super.key, required this.name, required this.url});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "Poppins",
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
