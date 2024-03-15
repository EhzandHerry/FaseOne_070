import 'package:flutter/material.dart';

class FormMakananWidget extends StatefulWidget {
  const FormMakananWidget(
      {super.key,
      required this.formKey,
      required this.etMakanan,
      required this.etMinuman,
      required this.etDesert});

  final GlobalKey<FormState> formKey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDesert;

  @override
  State<FormMakananWidget> createState() => _FormMakananWidgetState();
}

class _FormMakananWidgetState extends State<FormMakananWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: widget.etMakanan,
              decoration: const InputDecoration(
                labelText: "Makanan",
                hintText: "Isi pesanan Makanan yang anda mau"
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: widget.etMinuman,
              decoration: const InputDecoration(
                labelText: "Minuman",
                hintText: "Isi pesanan Minuman yang anda mau"
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: widget.etDesert,
              decoration: const InputDecoration(
                labelText: "Desert",
                hintText: "Isi pesanan Desert yang anda mau"
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}