import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const Divider(
                color: Color(0xffADADAD),
              ),
              Positioned(
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.white,
                      child: const Text(
                        "Or login with",
                        style: TextStyle(color: Color(0xff707070)),
                      )))
            ],
          ),
          const SizedBox(height: 30),
          // Social Media Logos
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x77C0C0C0),
                            offset: Offset(0, 1),
                            blurRadius: 10,
                            spreadRadius: 1)
                      ]),
                  child:
                      Image.asset("assets/images/google-logo.png", width: 20)),
              const SizedBox(width: 40),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x77C0C0C0),
                            offset: Offset(0, 1),
                            blurRadius: 10,
                            spreadRadius: 1)
                      ]),
                  child: Image.asset("assets/images/facebook-logo.png",
                      width: 20)),
            ],
          )
        ],
      ),
    );
  }
}
