import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'social_page.dart';
import 'delayed_animation.dart';
import 'main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1000,
                child: Container(
                  height: 130,
                  child: Image.asset('images/kungfu1.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2000,
                child: Container(
                  height: 300,
                  child: Image.asset('images/kungfu2.png'),
                ),
              ),
              DelayedAnimation(
                delay: 3000,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 0,
                    bottom: 20,
                  ),
                  child: Text(
                    "Get fitter, stronger, and embrasse a helthier lifestyle",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4000,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: d_red,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(13)),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SocialPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
