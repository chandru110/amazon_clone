import 'package:amazon_clone/Constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const CustomButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(
            double.infinity,
            50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Makes the button rectangular
          ),
          backgroundColor: GlobalVariables.secondaryColor),
    );
  }
}
