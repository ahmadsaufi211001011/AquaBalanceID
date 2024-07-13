import 'package:flutter/material.dart';

class MyPageButton extends StatelessWidget {
  final String languageText;
  final String deskriptionText;
  const MyPageButton(
      {super.key, required this.languageText, required this.deskriptionText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            languageText,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Spacer(),
          Text(deskriptionText),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 14,
          )
        ],
      ),
    );
  }
}
