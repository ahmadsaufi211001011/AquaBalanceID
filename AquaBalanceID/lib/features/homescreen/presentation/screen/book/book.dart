import 'package:aqua_balance/config/config.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              10.height,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey), // Warna dan ketebalan border
                  borderRadius: BorderRadius.circular(5), // Sudut border
                ),
                margin: const EdgeInsets.all(8.0), // Jarak antar item ListTile
                child: ListTile(
                  title: Text('Jenis Warna urine'),
                  trailing: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/readartikel');
                      },
                      child: Text('Baca')),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey), // Warna dan ketebalan border
                  borderRadius: BorderRadius.circular(5), // Sudut border
                ),
                margin: const EdgeInsets.all(8.0), // Jarak antar item ListTile
                child: ListTile(
                  title: Text('Bahaya Tidak Minum'),
                  trailing: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/book2');
                      },
                      child: Text('Baca')),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey), // Warna dan ketebalan border
                  borderRadius: BorderRadius.circular(5), // Sudut border
                ),
                margin: const EdgeInsets.all(8.0), // Jarak antar item ListTile
                child: ListTile(
                  title: Text('Asupan Harian'),
                  trailing: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/book3');
                      },
                      child: Text('Baca')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
