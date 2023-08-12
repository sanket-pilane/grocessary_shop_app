import 'package:flutter/material.dart';
import 'package:grocessary_shop_app/constants.dart';
import 'package:grocessary_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                kAvocadoImage,
              ),
              Column(
                children: [
                  Text(
                    kMainText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    kSubtitleText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[300],
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
