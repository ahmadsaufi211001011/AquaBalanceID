import 'package:flutter/material.dart';

class MyBottomProfile extends StatelessWidget {
  final void Function()? onTap;
  const MyBottomProfile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          'Edit Profile',
          style: TextStyle(color: Theme.of(context).primaryColorDark),
        )),
      ),
    );
  }
}
