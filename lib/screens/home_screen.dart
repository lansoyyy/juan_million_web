import 'package:flutter/material.dart';
import 'package:juan_million_web/widgets/button_widget.dart';
import 'package:juan_million_web/widgets/text_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff257DF9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/Juan4All 2.png',
                  width: 200,
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 600,
                        child: TextWidget(
                          text: "Juan 4 All: Your Ultimate Loyalty Companion",
                          fontSize: 48,
                          align: TextAlign.start,
                          maxLines: 3,
                          color: Colors.white,
                          fontFamily: 'Bold',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 600,
                        child: TextWidget(
                          text:
                              "Reward your everyday choices! Discover exclusive deals, earn points, and enjoy amazing rewards with Juan 4 All – your all-in-one customer loyalty platform.",
                          fontSize: 14,
                          align: TextAlign.start,
                          maxLines: 10,
                          color: Colors.white,
                          fontFamily: 'Regular',
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: 600,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonWidget(
                              width: 150,
                              radius: 100,
                              fontSize: 14,
                              color: Colors.white,
                              textColor: const Color(0xff257DF9),
                              label: 'Download App',
                              onPressed: () async {
                                await launchUrlString(
                                    'https://drive.google.com/file/d/16ULSAc13r8wuwTZatk0ky8yC4VvLky-Y/view?usp=sharing');
                              },
                            ),
                            ButtonWidget(
                              width: 150,
                              radius: 100,
                              fontSize: 14,
                              color: Colors.white,
                              textColor: const Color(0xff257DF9),
                              label: 'View Manual',
                              onPressed: () async {
                                await launchUrlString(
                                    'https://drive.google.com/file/d/1hWk_qMM4QnU_k5jeMbrrlLbj1Xw7piTR/view?usp=sharing');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/illu.png',
                    height: 500,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
