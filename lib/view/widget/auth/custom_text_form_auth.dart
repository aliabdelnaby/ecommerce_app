import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText, labelText;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;

  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              labelText,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
