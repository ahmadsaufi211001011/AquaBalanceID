import 'package:aqua_balance/config/config.dart';
import 'package:flutter/material.dart';

class MyCostumeTile extends StatelessWidget {
  final Icon icon;
  final String title;
  final String? subtitle;
  final Icon? rightIcon;
  const MyCostumeTile(
      {super.key,
      required this.icon,
      required this.title,
      this.subtitle,
      this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              icon,
              20.width,
              Text(
                title,
              ),
              const Spacer(),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              5.width,
              if (rightIcon != null)
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
