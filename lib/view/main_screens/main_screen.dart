import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_ex_app/view/main_screens/home_screen.dart';
import 'package:new_ex_app/view/main_screens/profile_screen.dart';
import 'package:new_ex_app/view/main_screens/quection_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int curruntIndex = 0;
  List<Widget> allPges = [HomeScreen(), QuectionScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value) {
          setState(() {
            curruntIndex = value;
          });
        },
        items: [
          SvgPicture.asset("assets/icons/library.svg"),
          SvgPicture.asset("assets/icons/circle-question-mark.svg"),
          SvgPicture.asset("assets/icons/user-round.svg"),
        ],
      ),
      body: allPges[curruntIndex],
    );
  }
}
