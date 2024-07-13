import 'package:aqua_balance/config/config.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtikelBook extends StatelessWidget {
  const ArtikelBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Jenis Warna urine'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      textAlign: TextAlign.justify,
                      '1. Bening atau transparan',
                      style: myTextStyle18,
                    ),
                    10.height,
                    Text(
                      textAlign: TextAlign.start,
                      'Melansir dari Healthline, warna urine yang transparan memiliki arti Anda minum lebih dari jumlah air yang dibutuhkan tubuh. Ini artinya tubuh Anda terhidrasi lebih dari cukup. Meski terhidrasi adalah hal yang baik, tapi minum lebih banyak air dapat menghilangkan elektrolit dalam tubuh Anda. Jika melihat warna urine semacam ini, Anda tak perlu panik. Anda hanya perlu mengurangi jumlah air yang diminum saja.',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '2. Kuning pucat (kuning lemon)',
                      style: myTextStyle18,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'Jika warna urine Anda adalah kuning pucat artinya Anda sehat. Ini juga berarti tubuh Anda terhidrasi dengan baik. ',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '3. Kuning',
                      style: myTextStyle18,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'Seperti penjelasan di atas, urine berwarna kuning merupakan warna yang normal. Ini juga menunjukkan bahwa tubuh Anda cukup terhidrasi.',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '4. Kuning Tua',
                      style: myTextStyle18,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'Melansir dari Business Insider, warna ini menunjukkan Anda baik-baik saja. Tapi, mungkin Anda perlu menambah asupan air karena ini berarti tuuh Anda sudah dalam ambang batas terhidrasi.',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '5. Kuning kecokelatan',
                      style: myTextStyle18,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'seperti madu Warna kuning kecokelatan pada urine menunjukkan Anda berada di ambang batas dehidrasi. Artinya, Anda perlu minum banyak air untuk mengatasinya.',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '6.Cokelat pekat',
                      style: myTextStyle18,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'seperti coca cola Warna urine yang cokelat pekat memiliki arti kurang baik. Itu karena warna ini bisa menunjukkan adanya penyakit hati (liver) atau dehidrasi. Baca juga: Apa Penyebab Urine Berbusa? Selain itu, beberapa kasus cedera otot juga bisa menyebabkan kerusakan ginjal sehingga mengubah warna urine menjadi seperti coca cola. Langkah awal ketika menemukan warna urine ini, Anda bisa meminum lebih banyak air. Jika setelah minum banyak air warna urine tidak berubah, Anda bisa segera memeriksakan diri ke dokter untuk memastikan kondisi tubuh Anda.',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '7.Oranye',
                      style: myTextStyle18,
                    ),
                    Text(
                      'Warna oranye pada urine menunjukkan bahwa Anda sedang dehidrasi. Namun, warna urine ini juga dapat berarti Anda sedang mengalami masalah liver atau saluran empedu. Kondisi kesehatan tersebut bisa diyakinkan jika Anda juga memiliki feses berwarna terang. Tak perlu buru-buru khawatir, merangkum dari Mayo Clinic, warna oranye pada urine juga bisa disebabkan pewarna makanan atau obat-obatan yang sedang dikonsumsi. Jika mengalami warna urine seperti ini, Anda perlu mengingat kembali makanan apa yang menyebabkan warna tersebut. Tapi jika Anda tidak memakan makanan berpewarna, segera temuilah dokter untuk memeriksakan diri. ',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '8.Biru atau hijau',
                      style: myTextStyle18,
                    ),
                    Text(
                      ' Warna urin biru atau hijau kebanyakan disebabkan oleh pewarna makanan. Baca juga: Warna Urine Bisa Ungkap Kondisi Kesehatan, Kenali Tiap Maknanya Tapi jangan sepelekan, karena warna ini juga bisa berarti beberapa hal. Misalnya, efek dari obat-obatan, infeksi bakteri, atau penyakik genetik yang langka. Untuk memastikannya, segera temui dokter. ',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '9.Berbusa atau berbuih',
                      style: myTextStyle18,
                    ),
                    Text(
                      ' Bagi Anda yang mengalami urine berbusa atau berbuih, mungkin ada masalah pada ginjal atau hanya kelebihan protein. Hal ini juga bisa menjadi tanda Anda mengalami infeksi saluran kemih (ISK). Dalam beberapa kasus, urine berbuah juga bisa jadi tanda dehidrasi. Jika hal ini terjadi terus-menerus, sebaiknya segera temui dokter untuk memastikan penyebabnya.',
                      style: myTextStyle16,
                    ),
                    15.height,
                    Text(
                      '10.  Pink atau kemerahan',
                      style: myTextStyle18,
                    ),
                    Text(
                      'Jika sebelumnya Anda mengonsumsi buah bit, blueberry, atau makanan berpewarna merah, Anda tak perlu khawatir. Wrana kemerahan pada urine juga bisa dipengaruhi oleh obat-obatan yang sedang dikonsumsi. Namun, jika sedang tidak mengonsumsi makanan atau obat-obatan tersebut, sudah sewajarnya Anda memeriksakan diri ke dokter. Itu karena warna kemerahan dalam urine bisa menunjukkan adanya infeksi, darah, masalah prostat, atau penyakit ginjal.',
                      style: myTextStyle18,
                    ),
                    15.height,
                    Text(
                      'Sumber dari artikel kompas',
                      style: myTextStyle18.copyWith(color: AppColor.blue),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            minimumSize: Size(double.infinity, 50)),
                        onPressed: _launchUrl,
                        child: Text('link artikel'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final Uri _url = Uri.parse(
    'https://health.kompas.com/read/2020/02/26/130400468/11-warna-urine-ini-ungkap-kondisi-kesehatan-anda?page=all');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
