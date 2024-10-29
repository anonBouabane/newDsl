import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormfeildScreen extends StatelessWidget {
  dynamic lable;
  Icon? suffixicon;
  FormfeildScreen({super.key, required this.lable, this.suffixicon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: suffixicon,
            border: const OutlineInputBorder(),
            label: lable),
      ),
    );
  }
}
