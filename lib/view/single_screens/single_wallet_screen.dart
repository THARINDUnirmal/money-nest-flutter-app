import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_ex_app/utils/app_constatnts.dart';

class SingleWalletScreen extends StatelessWidget {
  const SingleWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet 1"),
        actions: [
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "Help",
                  child: Row(
                    children: [
                      Text("help"),
                      Spacer(),
                      SvgPicture.asset(
                        "assets/icons/circle-question-mark.svg",
                        color: Colors.black54,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "Rename",
                  child: Row(
                    children: [
                      Text("Rename"),
                      Spacer(),
                      SvgPicture.asset(
                        "assets/icons/pen.svg",
                        color: Colors.black54,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "PDF Genarate",
                  child: Row(
                    children: [
                      Text("PDF"),
                      Spacer(),
                      SvgPicture.asset(
                        "assets/icons/file-text.svg",
                        color: Colors.black54,
                        width: 20,
                      ),
                    ],
                  ),
                ),

                PopupMenuItem(
                  value: "Delete",
                  child: Row(
                    children: [
                      Text("Delete"),
                      Spacer(),
                      SvgPicture.asset(
                        "assets/icons/trash-2.svg",
                        color: Colors.redAccent,
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstatnts.appPadding),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Net Balance"), Text("Rs 10000")],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Total In (+)"), Text("Rs 10000")],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Total Out (-)"), Text("Rs 10000")],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Center(child: Text("View Reports >")),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(169, 0, 136, 5),
                    const Color.fromARGB(255, 0, 255, 8),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "+ Cash In",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: 30),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(164, 155, 1, 1),
                    const Color.fromARGB(255, 255, 0, 0),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "+ Cash Out",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
