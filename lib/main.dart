import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static Widget buatKotak(Color warna, double ukuran, String nama) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: warna,
          ),
          height: ukuran,
          width: ukuran,
          margin: const EdgeInsets.all(10),
        ),
        Text(nama),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 8, // Jarak antara garis dan kotak
                child: Divider(
                  color: Colors.grey,
                  thickness: 2, // Ketebalan garis abu-abu
                ),
              ),
              Wrap(
                children: [
                  buatKotak(Colors.greenAccent, 100, "Naufal AL Zarah J"),
                  buatKotak(Colors.orangeAccent[400]!, 70, "Aurelia Dhea S"),
                  buatKotak(Colors.greenAccent, 50, "Anugerah Bagus P"),
                  buatKotak(Colors.orangeAccent[400]!, 90, "Adhtyia Pramudhita"),
                  buatKotak(Colors.red[300]!, 110, "Stefanus Pandi"),
                  buatKotak(Colors.blue[300]!, 30, "Alif Irafan"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
