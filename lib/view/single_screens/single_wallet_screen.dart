import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:new_ex_app/utils/app_constatnts.dart';
import 'package:new_ex_app/view/single_screens/add_data_screen.dart';

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
                      SvgPicture.asset(
                        "assets/icons/circle-question-mark.svg",
                        color: Colors.black54,
                        width: 20,
                      ),
                      SizedBox(width: 10),

                      Text("help"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "Rename",
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/pen.svg",
                        color: Colors.black54,
                        width: 20,
                      ),
                      SizedBox(width: 10),
                      Text("Rename"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "PDF",
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/file-text.svg",
                        color: Colors.black54,
                        width: 20,
                      ),
                      SizedBox(width: 10),
                      Text("PDF"),
                    ],
                  ),
                ),

                PopupMenuItem(
                  value: "Delete",
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/trash-2.svg",
                        color: Colors.redAccent,
                        width: 20,
                      ),
                      SizedBox(width: 10),
                      Text("Delete"),
                    ],
                  ),
                ),
              ];
            },
            onSelected: (value) {
              // if (value == "Delete") {
              //   areYouSureMessage(context: context);
              // }
            },
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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

                    SizedBox(height: 50),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey,
                            offset: Offset(3, 5),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text("Title"),
                                  SizedBox(height: 10),
                                ],
                              ),
                              Spacer(),
                              Text("Amount"),
                            ],
                          ),

                          Divider(),
                          SizedBox(height: 10),
                          Text("Added Time :"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddDataScreen(isCashOut: false),
                  ),
                );
              },
              child: Container(
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

  // void areYouSureMessage({required BuildContext context}) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         content: Container(
  //           width: 300,
  //           height: 300,
  //           child: Column(
  //             children: [Lottie.asset("assets/lotties/warning.json")],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
