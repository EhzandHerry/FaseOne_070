import 'package:flutter/material.dart';
import 'package:pertemuan3ucp1/screen/detailScreen.dart';
import 'package:pertemuan3ucp1/widget/formmakanan_widget.dart';

class dataMakananScreen extends StatelessWidget {
  const dataMakananScreen(
      {super.key, required this.nama, required this.notelp});

  final String nama;
  final String notelp;

  @override
  Widget build(BuildContext context) {
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var desert = TextEditingController();
    var formKey = GlobalKey<FormState>();

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
            FormMakananWidget(
                formKey: formKey,
                etMakanan: makanan,
                etMinuman: minuman,
                etDesert: desert),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => detailScreen(makanan: makanan.text,
                                  minuman: minuman.text,
                                  desert: desert.text,
                                  nama: nama,
                                  notelp: notelp)),
                        (route) => false);
                  }
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
