import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:ui_practice/utils/button.dart';

class PageSecondCard extends StatelessWidget {
  const PageSecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/2.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20).copyWith(top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "98%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.battery_75_percent,
                          color: Color.fromARGB(180, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Battery",
                          style: TextStyle(
                              color: Color.fromARGB(180, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "On",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.bluetooth,
                          color: Color.fromARGB(180, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Bluetooth",
                          style: TextStyle(
                            color: Color.fromARGB(180, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Stack(
                children: [
                  const Positioned(
                    right: 5,
                    top: 5,
                    child: Button(
                      icon: Icon(Icons.lock_outline),
                      size: 70,
                    ),
                  ),
                  ConfirmationSlider(
                    height: 80,
                    stickToEnd: true,
                    backgroundColor: const Color.fromARGB(30, 255, 255, 255),
                    foregroundColor: Colors.white,
                    sliderButtonContent: const Icon(
                      Icons.lock_open_rounded,
                      color: Colors.black,
                    ),
                    onConfirmation: () {},
                    text: '  > > >',
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
