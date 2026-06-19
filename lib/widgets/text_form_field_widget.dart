import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String titleText;
  final String labelText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.validator,
    required this.titleText,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Text(
          titleText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            filled: true,
            labelText: labelText,
            fillColor: Color.fromARGB(255, 222, 222, 250),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
