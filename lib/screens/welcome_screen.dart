import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  top: 100, bottom: 40, right: 40, left: 40),
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("/images/welcome.png"),
                    fit: BoxFit.contain,
                    opacity: 0.7),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Container(
                padding: const EdgeInsets.only(bottom: 10, left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coffee so good, your taste buds will love it.",
                      style: GoogleFonts.sora(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      textAlign: TextAlign.center,
                      "The best grain, the finest roast, the powerful flavor.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 88, 88), fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed function here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xFFC67C4E), // Sets the background color to #C67C4E
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16.0), // Sets the border radius to 16px
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ]));
  }
}
