// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
//berguna meng import apa yang ada dalam class yang telah di buat.
class LayoutRow extends StatelessWidget {
  //untuk membuat nama class, 
  const LayoutRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   //kelas yang memuat widget yang sifatnya statis. 
    return MaterialApp(
      //untuk memuat fungsi dari widget seperti tittle, dan lainnya.
        home: Scaffold(
     //widget utama untuk membuat sebuah halaman pada flutter    
            appBar: AppBar(
      //digunakan pada sebuah aplikasi sebagai menu petunjuk 
       //untuk memudahkan pengguna aplikasi        
              flexibleSpace: SafeArea(
          //untuk memasang silver menghindari intrupsi sistem operasi.       
                  child: Container(
                    //berguna untuk memuat baris judul yang akan di muat.
                child: Column(//membuat column
                  children: [//isi dari judul
                    Row(// berguna untuk memasukkan suatu baris
                      children: const [
                        IconButton(//berguna untuk menampilkan menu
                          icon: Icon(Icons.menu),//menu pilihan
                          tooltip: 'Navigation menu',//tampilan dari menu yang akan
                          onPressed: null,
                        ),
                        Spacer(),//memberikan spasi pada suatu penulisan
                        Text(//berguna untuk menampung suatu penulisan
                          'Kantin Politeknik Kampar',//kalimat yang akan ditampilkan
                          //pd judul
                          textAlign: TextAlign.center,//peletakan posisi dari penulisan
                        ),
                        Spacer()//memberikan spasi pada suatu penulisan
                      ],
                    )
                  ],
                ),
              )),
            ),
            // ignore: avoid_unnecessary_containers
            body: Container(
              child: Column(
                children: [
                  Row(// berguna untuk memasukkan suatu baris.
                    children: const [
                      Text(//berguna untuk menampung suatu penulisan
                        'kolom Pertama baris Pertama',//kalimat yang akan
                        // ditampilkan nanti 
                        textAlign: TextAlign.left,//peletakan posisi dari penulisan
                      ),
                      Spacer(),//memberikan spasi pada suatu penulisan
                      Text(
                        'kolom kedua baris Pertama',
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Text(
                        'kolom Ketiga baris Pertama',
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'kolom Pertama baris kedua',
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Text(
                        'kolom kedua baris kedua',
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Text(
                        'kolom ketiga baris kedua',
                        textAlign: TextAlign.right,//peletakan posisi dari penulisan
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}

void main() {//program yang akan di jalankan
  runApp(LayoutRow());//menjalankan class yang diatas.
}