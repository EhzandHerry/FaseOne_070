import 'package:flutter/material.dart';
import 'package:pertemuan3ucp1/screen/dataMakananScreen.dart';
import 'package:pertemuan3ucp1/widget/footer_widget.dart';
import 'package:pertemuan3ucp1/widget/form_widget.dart';
import 'package:pertemuan3ucp1/widget/header_widget.dart';

class dataFormScreen extends StatelessWidget {
  const dataFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var alamat = TextEditingController();
    var notelp = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HeaderWidget(),
                FormWidget(
                    formKey: formKey,
                    etNama: nama,
                    etAlamat: alamat,
                    etNotelp: notelp),
                FooterWidget(
                  onPressedNext: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => dataMakananScreen(
                              nama: nama.text,
                              notelp: notelp.text,
                            ),
                          ),
                          (route) => false);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Data diproses")));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
