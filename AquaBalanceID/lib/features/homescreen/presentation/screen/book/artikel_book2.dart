import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/config/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Book2 extends StatelessWidget {
  const Book2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bahaya Tidak Minum'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Text(
                    '''Akibat Kurang Minum Air Putih yang Tak Boleh Disepelekan 

1. Tekanan darah menurun Saat tubuh kurang minum air putih atau cairan lain, seseorang bisa mengalami dehidrasi. Dehidrasi dapat membuat volume plasma darah yang mengandung protein menurun. Dampaknya, tekanan darah orang yang kurang minum air putih juga bisa ikut turun. 

2. Mual dan muntah Saat suhu meningkat atau sedang melakukan aktivitas fisik, tubuh manusia secara alami menghilangkan panas di tubuh dengan berkeringat. Apabila pengeluaran cairan tersebut tidak diimbangi dengan asupan cairan pengganti, kenaikan suhu tubuh menyebabkan mual dan muntah.

3. Kram otot Akibat kurang minum air putih terutama setelah olahraga atau melakukan aktivitas fisik adalah kram otot. Berkeringat bisa menyebabkan penurunan volume plasma darah dan kadar elektrolit seperti natrium dan kalium. Apabila tidak diimbangi dengan minum air putih atau cairan lainnya, seseorang rentan terkena kram otot. 

4. Sembelit Akibat kurang minum air putih bisa berimbas pada gangguan pencernaan. Pasalnya, air putih membantu kelancaran sistem pendernaan. Kurang minum air putih bisa atau cairan lain menghambat kelancaran proses tersebut. Salah satu dampaknya adalah sembelit atau susah buang air besar (BAB). 

5. Penyakit batu ginjal dan infeksi saluran kencing Kurang minum air putih dan cairan lainnya juga dapat meningkatkan risiko penyakit batu ginjal dan infeksi saluran kencing. Saat kekurangan cairan, tubuh lebih sulit menghilangkan bakteri biang infeksi saluran kencing. Tak hanya itu, mineral pembentuk batu yang biasanya bisa hilang dengan minum air putih juga bisa mengendap di ginjal. 

6. Kurang bertenaga Dampaknya, tubuh jadi kurang bertenaga dan lemas sepanjang hari. Kondisi ini bisa dipengaruhi keseimbangan cairan di dalam tubuh terganggu.

7. Susah berpikir dan sakit kepala Otak manusia sekitar 80 persen terdiri atas air. Agar kinerja otak bisa optimal, organ vital ini memerlukan asupan air. Akibat kurang minum air putih dan cairan lainnya bisa menyebabkan kinerja otak jadi tidak optimal. Salah satu imbasnya, otak jadi tidak fokus, susah berpikir, mengantuk, susah mengingat sesuatu, sampai sakit kepala.

8. Stroke Akibat kurang minum air putih dan cairan lainnya juga bisa meningkatkan risiko stroke. Tak hanya itu, komplikasi dehidrasi dapat menyebabkan prses pemulihan stroke jadi lebih lama. Hindari dehidrasi dengan minum air putih saat kencing sudah berwarna kuning, lemas, dan tubuh tidak bertenaga. 

9. Murung dan sedih Dehidrasi juga bisa berdampak pada kesehatan mental, salah satunya membuat suasana hati memburuk. Tak pelak, orang yang kurang minum air putih dan cairan lainnya jadi mudah murung, sedih, mudah tersinggung, dan rewel. 

10. Makan berlebihan Kurang minum air putih juga dapat menyebabkan seseorang jadi makan berlebihan. Terkadang, rasa haus tumpang tindih dengan rasa lapar. Ketika seseorang minum air putih sebelum makan, isyarat rasa sangat lapar di tubuh bisa ditekan, sehingga makan jadi tidak berlebihan. 

11. Metabolisme jadi lebih lambat Kurang minum air putih dan cairan lainnya membuat metabolisme tubuh melambat. Dengan metabolisme yang lebih lambat, berat badan bisa bertambah. Minum air putih juga bisa membantu menurunkan berat badan dengan mengurangi rasa lapar. 

12. Kulit kering Akibat kurang minum air putih dan cairan lainnya yang pantang disepelekan adalah kulit kering. Kulit perlu tetap terhidrasi agar tetap lembab. Kurang cairan dapat membuat kulit keriput, tidak segar, dan tidak berkilau. Kekurangan cairan di dalam tubuh membuat kolagen pecah, sehingga garis halus dan kerutan di kulit jadi lebih kentara.
                ''',
                    style: myTextStyle16,
                  ),
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
              ))
            ],
          ),
        ),
      ),
    );
  }
}

final Uri _url = Uri.parse(
    'https://health.kompas.com/read/2020/11/18/101000568/12-akibat-kurang-minum-air-putih-yang-tak-boleh-disepelekan?page=all');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
