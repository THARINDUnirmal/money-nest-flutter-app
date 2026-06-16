import 'package:flutter/material.dart';
import 'package:new_ex_app/utils/app_constatnts.dart';
import 'package:new_ex_app/widgets/categeory_widget.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({super.key});

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cash In"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(AppConstatnts.appPadding),
        child: Column(
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Enter Title",
                      fillColor: Color.fromARGB(255, 222, 222, 250),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Amount",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Enter Amount",
                      fillColor: Color.fromARGB(255, 222, 222, 250),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Enter Description",
                      fillColor: Color.fromARGB(255, 222, 222, 250),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                      CategeoryWidget(
                        title: "Transport",
                        icon: Icons.account_balance_rounded,
                      ),
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                      CategeoryWidget(title: "Food", icon: Icons.food_bank),
                      CategeoryWidget(title: "ADD", icon: Icons.add),
                    ],
                  ),

                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
