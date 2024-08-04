import 'package:flutter/material.dart';

Widget logTextField(
    {required label,
    errorMessage,
    keyboardType,
    isObscure,
    required controller,
    required ctx}) {
  return LayoutBuilder(
    builder: (ctx, constranints) => TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: constranints.maxHeight / 6,
          horizontal: constranints.maxHeight / 6,
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
