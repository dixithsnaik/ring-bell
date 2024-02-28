import 'package:flutter/material.dart';
import 'package:ui_practice/bottomnavigationbar.dart';
import 'package:ui_practice/home.dart';
import 'package:ui_practice/utils/card1.dart';
import 'package:ui_practice/utils/secondpagecard2.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFF1A1819),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 0.5),
                                  shape: BoxShape.circle,
                                  color:
                                      const Color.fromARGB(30, 255, 255, 255),
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.all(24),
                                  onPressed: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage(),
                                        ),
                                        (route) => false);
                                  },
                                  icon: const Icon(
                                    Icons.auto_awesome_mosaic,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 0.5),
                                  shape: BoxShape.circle,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.all(24),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.settings_outlined,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Front Door",
                                    style: TextStyle(
                                        fontSize: 60,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const PageSecondCard(),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SecondPageBottomCard(
                                      color: Color(0XFFAD8D64),
                                      title: 'Send\nKey',
                                      icon: Icon(
                                        Icons.key_rounded,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SecondPageBottomCard(
                                      color: Color(0XFF373737),
                                      title: 'Send\nCode',
                                      icon: Icon(
                                        Icons.keyboard_alt_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 120,
                                  width: size.width,
                                  color: Colors.transparent,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: size.height * 0.9,
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomNavigationBar(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
