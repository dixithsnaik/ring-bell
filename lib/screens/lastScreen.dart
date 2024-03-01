import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

import 'package:ui_practice/utils/info.dart';
import 'package:ui_practice/utils/lastPageIndicator.dart';
import 'package:ui_practice/utils/lastPageMiniCard.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFF1A1819),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Send Key",
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LastPageMiniCard(
                    isTick: true,
                    icon: Icon(
                      Icons.key_rounded,
                      color: Colors.black,
                      size: 26,
                    ),
                    title: 'Send eKey',
                    color: Color(0XFFAD8D64),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  LastPageMiniCard(
                    isTick: false,
                    icon: Icon(
                      Icons.fingerprint,
                      color: Colors.black,
                      size: 26,
                    ),
                    title: 'Send eKey',
                    color: Color(0XFF373737),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  LastPageMiniCard(
                    isTick: false,
                    icon: Icon(
                      Icons.key_rounded,
                      color: Colors.black,
                      size: 26,
                    ),
                    title: 'Send eKey',
                    color: Color(0XFF373737),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: size.height * 0.5,
                width: size.width * 0.98,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0XFF848484),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Select",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 52,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          LastPageIndicator(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.white,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(info[0]['url']),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  info[0]['name'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(info[1]['url']),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  info[1]['name'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(info[2]['url']),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  info[2]['name'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(info[3]['url']),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  info[3]['name'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(info[4]['url']),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  info[4]['name'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(info[5]['url']),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  info[5]['name'],
                                  style: const TextStyle(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ConfirmationSlider(
                        height: 80,
                        stickToEnd: false,
                        backgroundColor:
                            const Color.fromARGB(30, 255, 255, 255),
                        foregroundColor: Colors.white,
                        sliderButtonContent: const Icon(
                          Icons.key_rounded,
                          color: Colors.black,
                        ),
                        onConfirmation: () {},
                        text: 'Send key >>>',
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
