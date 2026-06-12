import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_ex_app/utils/app_colors.dart';
import 'package:new_ex_app/utils/app_constatnts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppConstatnts().appPadding),
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
              Text("Your Wallets", style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Action here
        },
        icon: const Icon(Icons.add),
        label: const Text('Create Wallet'),
      ),
    );
  }
}
