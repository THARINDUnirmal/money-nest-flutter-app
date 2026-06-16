import 'package:flutter/material.dart';
import 'package:new_ex_app/utils/app_colors.dart';

class CategeoryWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CategeoryWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: title == "ADD"
                ? const Color.fromARGB(255, 40, 255, 7)
                : AppColors.appBlueColor,
          ),
          child: Icon(
            icon,
            color: title == "ADD" ? Colors.black : Colors.white,
            size: 30,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
