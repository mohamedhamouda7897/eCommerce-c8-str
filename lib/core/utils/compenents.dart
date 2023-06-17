import 'package:flutter/material.dart';

Widget defaultFormField(
        {required String label,
        required Function validate,
        bool isPassword = false}) =>
    TextFormField(
      validator: (value) {
        validate(value);
      },
      obscureText: isPassword,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: label,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(12))),
    );
