import 'package:flutter/material.dart';

Widget logTextField(
    {required label,
    errorMessage,
    keyboardType,
    isObscure,
    required controller,
    required Size screenSize}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: (screenSize.height / 6).toDouble(),
      horizontal: (screenSize.height / 6).toDouble(),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: (screenSize.height / 6).toDouble(),
          horizontal: (screenSize.height / 6).toDouble(),
        ),
        filled: true,
        label: Text(label),
        errorStyle: const TextStyle(
          color: Color(
            0x8C8A8CFF,
          ),
        ),
        errorText: errorMessage,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
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
