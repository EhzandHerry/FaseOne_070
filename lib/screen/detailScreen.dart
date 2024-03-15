import 'package:flutter/material.dart';
import 'package:pertemuan3ucp1/screen/dataformscreen.dart';

class detailScreen extends StatelessWidget {
  const detailScreen(
      {super.key,
      required this.makanan,
      required this.minuman,
      required this.desert,
      required this.nama,
      required this.notelp});

  final String nama;
  final String notelp;
  final String makanan;
  final String minuman;
  final String desert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Form"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Nama : $nama",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "No Telp : $notelp",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Makanan : $makanan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Minuman : $minuman",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Desert : $desert",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dataFormScreen()));
                },
                child: const Text(
                  "Finish",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}