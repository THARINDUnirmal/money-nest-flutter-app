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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Title";
                        } else {
                          return null;
                        }
                      },
                      labelText: "Enter Title",
                      keyboardType: TextInputType.name,
                    ),

                    TextFormFieldWidget(
                      titleText: "Amount",
                      controller: _amountController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Amount";
                        } else if (double.parse(value).toDouble() <= 0) {
                          return "Amount Not Valid";
                        } else {
                          return null;
                        }
                      },
                      labelText: "Enter Amount",
                      keyboardType: TextInputType.number,
                    ),

                    TextFormFieldWidget(
                      titleText: "Description",
                      controller: _descriptionController,
                      labelText: "Enter Description",
                      keyboardType: TextInputType.name,
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
                    GestureDetector(
                      onTap: () {
                        categorieAddSheet();
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 222, 222, 250),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Upload image (Optional)",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Icon(Icons.image_outlined),
                          ],
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
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          //Todo
                        }
                      },
                      child: Container(
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

  void categorieAddSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 400,
          padding: EdgeInsets.all(20),
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
            ],
          ),
        );
      },
    );
  }
}
