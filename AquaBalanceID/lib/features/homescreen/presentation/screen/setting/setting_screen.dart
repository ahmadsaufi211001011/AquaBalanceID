import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/features/homescreen/presentation/provider/thme.dart';
import 'package:aqua_balance/features/homescreen/presentation/widgets/setting/my_costume.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final bool isaktif = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 24.0,
                  ),
                ),
                Spacer(),
                Text(
                  'Pengaturan',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Container(
                  width: 50,
                )
              ],
            ),
          ),
          20.height,
          Padding(
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
                    const Icon(
                      Icons.brightness_4_outlined,
                      size: 30.0,
                    ),
                    20.width,
                    const Text("Dark Mode"),
                    const Spacer(),
                    Switch(
                      value: themeProvider.isDarkMode,
                      onChanged: (value) {
                        themeProvider.toggleTheme();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          10.height,

          MyCostumeTile(
            icon: Icon(
              Icons.logout_outlined,
            ),
            title: 'Keluar',
          ),
          // GestureDetector(
          //   onTapDown: (details) {
          //     setState(() {
          //       _containerColor = Colors.red;
          //     });
          //   },
          //   onTapUp: (details) {
          //     setState(() {
          //       _containerColor = Colors.blue;
          //     });
          //   },
          //   child: Container(
          //     width: 50,
          //     height: 50,
          //     color: _containerColor,
          //     child: Center(
          //       child: Text(
          //         'Kontainer',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 20,
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    ));
  }
}
