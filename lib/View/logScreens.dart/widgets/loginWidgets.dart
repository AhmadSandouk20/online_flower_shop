import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget logTextField(
    {required label,
    errorMessage,
    keyboardType,
    isObscure,
    required controller,
    required Size screenSize}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: (screenSize.height / 52).toDouble(),
      horizontal: (screenSize.height / 20).toDouble(),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: (screenSize.height / 50).toDouble(),
          horizontal: (screenSize.height / 50).toDouble(),
        ),
        label: Text(label),
        errorStyle: const TextStyle(
          color: Color(
            0x8C8A8CFF,
          ),
        ),
        errorText: errorMessage,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            7,
          ),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: isObscure ?? false,
      controller: controller,
    ),
  );
}
