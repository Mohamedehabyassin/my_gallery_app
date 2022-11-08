import 'package:flutter/material.dart';

Widget appTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required Function validate,
  required String label,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator: (value) => validate(value),
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
        )
      ),

    );
