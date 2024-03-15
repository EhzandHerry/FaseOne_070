import 'package:flutter/material.dart';

class dataMakananScreen extends StatelessWidget {
  const dataMakananScreen(
      {super.key, required this.nama, required this.notelp});

  final String nama;
  final String notelp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Form Makanan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Nama: $nama"),
            Text("No Telepon: $notelp"),
          ],
        ),
      ),
    );
  }
}
