import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingleWalletScreen extends StatelessWidget {
  const SingleWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet 1"),
        actions: [
          SvgPicture.asset(
            "assets/icons/ellipsis-vertical.svg",
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
