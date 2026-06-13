import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      height: 50,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffeaddff),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/album.svg",
                color: Colors.black45,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Wallet Name"),
              Text(
                "Wallet Created Date",
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Spacer(),

          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "Delete",
                  child: Row(
                    children: [
                      Text("Open"),
                      Spacer(),
                      SvgPicture.asset(
                        "assets/icons/move-up.svg",
                        color: Colors.greenAccent,
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
        ],
      ),
    );
  }
}
