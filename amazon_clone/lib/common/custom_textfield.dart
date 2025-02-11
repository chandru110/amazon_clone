import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  const CustomTextfield(
      {super.key, required this.controller, required this.hintext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintext,
        border:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
      ),
      validator: (val) {},
    );
  }
}
