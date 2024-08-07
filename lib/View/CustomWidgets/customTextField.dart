import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_flower_shop/Styles/colors.dart';

import 'package:online_flower_shop/Styles/fonts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  TextInputType? keyboardType;
  bool? isObscure;
  TextInputAction? textInputAction;
  FocusNode? focusNode;
  Function(void)? onFieldSubmitted;
  Color? labelColor;
  Icon? suffixIcon;
  // String? errorMessage;

  CustomTextField(
      {required this.label,
      errorMessage,
      keyboardType,
      isObscure,
      textInputAction,
      focusNode,
      onFieldSubmitted,
      labelColor,
      suffixIcon
      // required Size screenSize
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25.h,
        left: 30.w,
        right: 30.w,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: 5.h,
            horizontal: 15.w,
          ),
          label: Text(
            label,
            style: TextStyle(
              color: labelColor ?? ShopColors.darkGreyColor,
              fontFamily: ShopFonts.roboto,
            ),
          ),
          errorStyle: const TextStyle(
            color: Color(
              0x8C8A8CFF,
            ),
          ),
          // errorText: errorMessage,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              7,
            ),
          ),
        ),
        keyboardType: keyboardType,
        obscureText: isObscure ?? false,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
      ),
    );
  }
}
