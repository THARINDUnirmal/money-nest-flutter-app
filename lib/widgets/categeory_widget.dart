import 'package:flutter/material.dart';
import 'package:new_ex_app/utils/app_colors.dart';

class CategeoryWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CategeoryWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blue),
              shape: BoxShape.circle,
              color: title == "ADD"
                  ? const Color.fromARGB(255, 161, 253, 147)
                  : Color(0xff4BB8FA),
            ),
            child: Icon(
              icon,
              color: title == "ADD" ? Colors.black : Colors.white,
              size: 30,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 55,
            child: Text(
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
