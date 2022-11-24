import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Deskripsi",
      overflow: TextOverflow.ellipsis,)),
      body: SingleChildScrollView(
        child:Center(
                      child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child:
                            Image.asset('lib/assets/j1.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 20),
                      child: Text(
                        "Pesawat terbang merupakan salah satu pesawat udara yang bisa terbang dengan tenaga sendiri, memiliki sayap tetap dan lebih berat dari udara. Istilah pesawat terbang secara umum biasa disebut juga dengan kapal terbang atau pesawat udara atau hanya pesawat dengan tujuan pendefinisian sebagai kendaraan yang dapat terbang di udara atau atmosfer. Pesawat terbang mempunyai dua klasifikasi yaitu pertama, pesawat aerodin atau pesawat yang lebih berat daripada udara. Pesawat aerodin ini meliputi pesawat bersayap tetap atau pesawat terbang, helikopter, autogiro. Dan kedua, pesawat aerostat atau pesawat yang lebih ringan daripada udara. Jenis pesawat yang termasuk dalam pesawat aerostat ini adalah kapal udara. Penerbangan pertama kalinya dengan menggunakan balon udara panas yang ditemukan seorang berkebangsaaan Perancis bernama Joseph Montgolfier dan Etiene Montgolfier terjadi pada tahun 1782, kemudian disempurnakan seorang Jerman yang bernama Ferdinand von Zeppelin dengan memodifikasi balon berbentuk cerutu yang digunakan untuk membawa penumpang dan barang pada tahun 1900. Pada tahun tahun berikutnya balon Zeppelin mengusai pengangkutan udara sampai musibah kapal Zeppelin pada perjalanan trans-Atlantik New Jersey 1936 yang menandai berakhirnya era Zeppelin meskipun masih dipakai menjelang Perang Dunia II. Setelah zaman Wright, pesawat terbang banyak mengalami modifikasi baik dari rancang bangun, bentuk dan mesin pesawat untuk memenuhi kebutuhan transportasi udara.",
                        style: GoogleFonts.roboto(letterSpacing: 0.5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ]))));
  }
}