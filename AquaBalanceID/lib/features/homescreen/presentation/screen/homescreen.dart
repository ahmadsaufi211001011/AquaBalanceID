import 'package:aqua_balance/features/crud/presentation/pages/person/person.dart';
import 'package:aqua_balance/features/homescreen/presentation/screen/home/home.dart';
import 'package:aqua_balance/features/homescreen/presentation/screen/book/book.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _natigatorButtonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = [HomePage(), Book(), PersonPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _page[_selectedIndex],
      backgroundColor: Colors.blue.shade700,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _natigatorButtonBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.water_drop_rounded), label: 'Berada'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Buku'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Profil')
        ],
      ),
    ));
  }
}
