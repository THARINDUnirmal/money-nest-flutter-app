import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:new_ex_app/utils/app_colors.dart';
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
    double appWidth = MediaQuery.of(context).size.width;
    double appHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: appWidth * 0.6,
              height: 60,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black87,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        curruntIndex = 0;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/icons/library.svg"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        curruntIndex = 1;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/circle-question-mark.svg",
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        curruntIndex = 2;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/icons/user-round.svg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                addingWalletSheet(context: context);
              },
              child: Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: RadialGradient(
                    colors: [Colors.deepPurpleAccent, Colors.purpleAccent],
                  ),
                ),
                child: Center(
                  child: Icon(Icons.add, size: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      body: allPges[curruntIndex],
    );
  }

  void successMessegeSheet({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close),
                  ),
                ],
              ),
              Lottie.asset(
                "assets/lotties/done.json",
                width: 100,
                repeat: false,
              ),
              SizedBox(height: 20),
              Text(
                "New Wallet Created!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "You can customize icome & expences start adding entries to your wallet.",
                style: TextStyle(color: Colors.black45),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: Text("Start Adding Entries"),
              ),
            ],
          ),
        );
      },
    );
  }

  void addingWalletSheet({required BuildContext context}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsetsGeometry.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close),
                    ),
                  ],
                ),

                Text(
                  "Create New Wallet",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Divider(),
                SizedBox(height: 20),
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Wallet Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text("Suggestions"),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffeaddff),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("Suggetion 1 ")),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffeaddff),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("Suggetion 1 ")),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffeaddff),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("Suggetion 1 ")),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffeaddff),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("Suggetion 1 ")),
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffeaddff),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("Suggetion")),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    successMessegeSheet(context: context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.appBlueColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Create Wallet",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
