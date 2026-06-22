import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 700,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/back.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          //second chapter
          Positioned(
            top: -750,
            left: -490,
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                width: 650,
                height: 650,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      offset: Offset(150, 55),
                      color: const Color.fromARGB(
                        229,
                        135,
                        0,
                        239,
                      ).withOpacity(0.9),
                      // blurStyle: BlurStyle.normal,
                    ),
                    BoxShadow(
                      blurRadius: 30,
                      offset: Offset(250, 160),
                      color: const Color.fromARGB(
                        229,
                        135,
                        0,
                        239,
                      ).withOpacity(0.9),
                      // blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: -150,
            right: -100,
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      offset: Offset(150, 55),
                      color: const Color.fromARGB(
                        229,
                        135,
                        0,
                        239,
                      ).withOpacity(0.9),
                      // blurStyle: BlurStyle.normal,
                    ),
                    BoxShadow(
                      blurRadius: 30,
                      offset: Offset(250, 160),
                      color: const Color.fromARGB(
                        229,
                        135,
                        0,
                        239,
                      ).withOpacity(0.9),
                      // blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 125,
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Colors.black,
                    offset: Offset(0, -40),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: Text(
              "Money\n     Nest",
              style: GoogleFonts.lobster(fontSize: 30, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 180,
            left: 20,
            child: Text(
              "Make Your\nFinances Move",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
          Positioned(
            bottom: 130,
            left: 20,
            child: Text(
              "Jen the tastest and cmapest\ntransaction ever",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_right, size: 30),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border(
                      left: BorderSide(color: Colors.white, width: 1),
                      right: BorderSide(color: Colors.white, width: 2),
                      top: BorderSide(color: Colors.white, width: 1),
                      bottom: BorderSide(color: Colors.white, width: 2),
                    ),
                    color: Colors.white.withOpacity(0.15),
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/icons/google (2).svg"),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                    child: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border(
                          left: BorderSide(color: Colors.white, width: 1),
                          right: BorderSide(color: Colors.white, width: 2),
                          top: BorderSide(color: Colors.white, width: 1),
                          bottom: BorderSide(color: Colors.white, width: 2),
                        ),
                        color: Colors.white.withOpacity(0.15),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/facebook (2).svg",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
