import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget(
      {super.key,
      required this.formKey,
      required this.etNama,
      required this.etAlamat,
      required this.etNotelp});

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etAlamat;
  final TextEditingController etNotelp;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.etNama,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Nama",
                hintText: "Masukkan Nama",
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan nama terlebih dahulu!';
                }
                return null;
              },
            ),
            TextFormField(
              controller: widget.etAlamat,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Alamat",
                  hintText: "Masukkan Alamat",
                  prefixIcon: Icon(Icons.location_city)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan alamat terlebih dahulu!';
                }
                return null;
              },
            ),
            TextFormField(
              controller: widget.etNotelp,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "No Telepon",
                hintText: "Masukkan No Telp",
                prefixIcon: Icon(Icons.phone),
              ),
              validator: (value) {
                bool isValidPhoneNumber(String? value) => RegExp(
                        r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)')
                    .hasMatch(value!);
                if (value!.isEmpty) {
                  return "Masukkan notelp dengan benar";
                }
                return null;
              },
            ),
            Row(
              children: [ListTile(
                
              )],
            )
          ],
        ));
  }
}
