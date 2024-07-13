import 'package:aqua_balance/config/config.dart';
import 'package:flutter/material.dart';

class Book3 extends StatelessWidget {
  const Book3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Rata-rata Kebutuhan Air Harian'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Text(
                  '''Rata-rata Kebutuhan Air Harian

1. Anak-anak Usia 1-3 Tahun:
Sekitar 1,3 liter per hari (1300 mililiter atau sekitar 5 gelas ukuran 8 ons).

2. Anak-anak Usia 4-8 Tahun:
Sekitar 1,7 liter per hari (1700 mililiter atau sekitar 7 gelas ukuran 8 ons).

3. Anak-anak Usia 9-13 Tahun:
Anak Laki-laki: Sekitar 2,4 liter per hari (2400 mililiter atau sekitar 10 gelas ukuran 8 ons).
Anak Perempuan: Sekitar 2,1 liter per hari (2100 mililiter atau sekitar 9 gelas ukuran 8 ons).

4. Remaja Usia 14-18 Tahun:
Anak Laki-laki: Sekitar 3,3 liter per hari (3300 mililiter atau sekitar 13 gelas ukuran 8 ons).
Anak Perempuan: Sekitar 2,3 liter per hari (2300 mililiter atau sekitar 9,5 gelas ukuran 8 ons).
Faktor Penyesuaian
Seperti halnya orang dewasa, kebutuhan air untuk anak-anak juga dapat dipengaruhi oleh beberapa faktor:

Aktivitas Fisik: 
Anak-anak yang aktif bermain atau berolahraga mungkin memerlukan lebih banyak air untuk mengimbangi cairan yang hilang melalui keringat.
Iklim dan Lingkungan: Anak-anak yang tinggal di iklim panas atau lembab mungkin membutuhkan lebih banyak air.
Kesehatan: Jika anak sedang sakit, terutama dengan kondisi yang menyebabkan kehilangan cairan seperti demam, diare, atau muntah, mereka mungkin memerlukan lebih banyak cairan.''',
                  style: myTextStyle18,
                )
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
