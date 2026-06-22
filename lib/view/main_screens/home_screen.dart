import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:new_ex_app/utils/app_colors.dart';
import 'package:new_ex_app/utils/app_constatnts.dart';
import 'package:new_ex_app/view/single_screens/single_wallet_screen.dart';
import 'package:new_ex_app/widgets/wallet_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppConstatnts.appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Money",
                      style: TextStyle(
                        color: AppColors.appBlueColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: "Nest",
                          style: TextStyle(
                            color: Color.fromARGB(255, 8, 234, 0),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/bell (1).svg",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterChip(
                      label: Text("All"),
                      onSelected: (value) {},
                      selected: true,
                      checkmarkColor: AppColors.appBlueColor,
                    ),
                    SizedBox(width: 10),
                    FilterChip(label: Text("New "), onSelected: (value) {}),
                    SizedBox(width: 10),
                    FilterChip(label: Text("A-Z "), onSelected: (value) {}),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text("Date Modified "),
                      onSelected: (value) {},
                    ),
                    SizedBox(width: 10),
                    FilterChip(label: Text("Data 1"), onSelected: (value) {}),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Wallets", style: TextStyle(fontSize: 20)),
                  Icon(Icons.search),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingleWalletScreen()),
                ),
                child: WalletWidget(),
              ),
              WalletWidget(),
              WalletWidget(),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: AppColors.appBlueColor3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create New Wallet",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Click to quickly create wallet for",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                        ),
                        SizedBox(height: 30),
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
                      ],
                    ),
                    Column(
                      children: [
                        Lottie.asset("assets/lotties/wallet.json", width: 70),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
