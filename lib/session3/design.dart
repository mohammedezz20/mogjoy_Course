import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Meditaion_Screen extends StatelessWidget {
  const Meditaion_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 90.0, right: 20.0, bottom: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Image.asset("assets/Hamburger.png"),
                  onTap: () {},
                ),
                Image.asset(
                  "assets/HomeActive.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/person.png"),
                  radius: 25,
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcome back, Afreen!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "How are you feeling today ?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 105,
                  width: 75,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 75,
                        decoration: BoxDecoration(
                            color: const Color(0xffADCE74),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset("assets/Icon1.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Calm",
                        style: TextStyle(
                          color: Color(0xff818586),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 105,
                  width: 75,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 75,
                        decoration: BoxDecoration(
                            color: const Color(0xffADCE74),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset("assets/icon2.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Relax",
                        style: TextStyle(
                          color: Color(0xff818586),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 105,
                  width: 75,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 75,
                        decoration: BoxDecoration(
                            color: const Color(0xffADCE74),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset("assets/icon3.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Focus",
                        style: TextStyle(
                          color: Color(0xff818586),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 105,
                  width: 75,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 75,
                        decoration: BoxDecoration(
                            color: const Color(0xffADCE74),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset("assets/icon3.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Anxious",
                        style: TextStyle(
                          color: Color(0xff818586),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 190,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 214, 239, 169),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Meditation 101",
                        style: TextStyle(
                          color: Color(0xff4B9145),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Techniques, Benefits, and a Beginner’s How-To",
                        style: TextStyle(
                          color: Color(0xff818586),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                            color: const Color(0xff61B15A),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "watch now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.play_circle,
                                color: Colors.white,
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset('assets/1.png'),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
