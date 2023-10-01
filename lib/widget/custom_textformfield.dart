import 'package:flutter/material.dart';

typedef Validation = String? Function(String?)?;

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  //  String? Function(String?)? validator,
  Widget prefixIcon;
  String hint;
  bool? obscure;
  Widget? suffix;
  Validation? valed;
  TextEditingController? controller;
  CustomTextField(
      {super.key,
      required this.prefixIcon,
      required this.hint,
      this.obscure = false,
      this.suffix = const SizedBox(
        height: 2,
      ),
      this.valed,
      this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        validator: valed,
        obscureText: obscure!,
        decoration: InputDecoration(
            suffixIcon: suffix,
            prefixIcon: prefixIcon,
            hintText: hint,
            focusColor: Colors.blueGrey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.0),
            )),
      ),
    );
  }
}
