import 'package:flutter/material.dart';
import 'package:new_ex_app/utils/app_constatnts.dart';
import 'package:new_ex_app/widgets/categeory_widget.dart';
import 'package:new_ex_app/widgets/text_form_field_widget.dart';

class AddDataScreen extends StatefulWidget {
  final bool isCashOut;
  const AddDataScreen({super.key, required this.isCashOut});

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  //Form key
  final _formKey = GlobalKey<FormState>();
  //Text Editing Controllers
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isCashOut ? "Cash Out" : "Cash In"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppConstatnts.appPadding),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormFieldWidget(
                      titleText: "Title",
                      controller: _titleController,
                      validator: (value) {},
                      labelText: "Enter Title",
                    ),

                    TextFormFieldWidget(
                      titleText: "Amount",
                      controller: _amountController,
                      validator: (value) {},
                      labelText: "Enter Amount",
                    ),

                    TextFormFieldWidget(
                      titleText: "Description",
                      controller: _descriptionController,
                      validator: (value) {},
                      labelText: "Enter Description",
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Attach Receipt",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.add_photo_alternate_outlined),
                        filled: true,
                        labelText: "Upload image (Optional)",
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
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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

                    SizedBox(height: 60),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xff1d55f3),
                        gradient: widget.isCashOut
                            ? null
                            : LinearGradient(
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
                          widget.isCashOut ? "Add Cash Out" : "Add Cash In",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
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
