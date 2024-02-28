import 'package:flutter/material.dart';

import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:ui_practice/screens/secondScreen.dart';
import 'package:ui_practice/utils/page_indicator.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/124.jpg",
            ),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "AQARA",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Smart",
                      style: TextStyle(
                          fontSize: 72,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Poppins'),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          clipBehavior: Clip.none,
                          child: Stack(
                            children: [
                              Container(
                                clipBehavior: Clip.hardEdge,
                                height: 60,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Colors.black),
                                child: Image.asset(
                                  "assets/images/images.jpeg",
                                ),
                              ),
                              Positioned(
                                left: 40,
                                bottom: 40,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0XFFEA483D),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.lock_outline_rounded,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          "door ",
                          style: TextStyle(
                              fontSize: 72,
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                    const Text(
                      "lock ",
                      style: TextStyle(
                          fontSize: 72,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                const PageIndicator(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      ConfirmationSlider(
                        height: 80,
                        stickToEnd: false,
                        backgroundColor:
                            const Color.fromARGB(30, 255, 255, 255),
                        foregroundColor: Colors.white,
                        sliderButtonContent: const Icon(
                          Icons.lock_open_rounded,
                          color: Colors.black,
                        ),
                        onConfirmation: () {
                          
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SecondScreen(),
                            ),
                          );
                        },
                        text: 'Start      > > >',
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
