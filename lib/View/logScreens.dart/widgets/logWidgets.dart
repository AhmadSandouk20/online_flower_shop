import 'package:flutter/material.dart';
import 'package:online_flower_shop/Styles/colors.dart';
import 'package:online_flower_shop/Styles/my_flutter_app_icons.dart';

import 'package:online_flower_shop/View/CustomWidgets/customTextField.dart';

Widget logForm({
  required context,
  required logController,
  required bool signUp,
}) {
  return Form(
    child: Column(
      children: [
        CustomTextField(
          label: "Email",
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(
              logController.phoneFocusNode,
            );
          },
          textInputAction: TextInputAction.next,
        ),
        CustomTextField(
          label: "Phone Number",
          focusNode: logController.phoneFocusNode,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(
              logController.passwordFocusNode,
            );
          },
          keyboardType: TextInputType.number,
        ),
        if (signUp)
          CustomTextField(
            label: "User Name",
            focusNode: logController.phoneFocusNode,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(
                logController.passwordFocusNode,
              );
            },
            keyboardType: TextInputType.number,
          ),
        CustomTextField(
          label: "Password",
          isObscure: true,
          focusNode: logController.passwordFocusNode,
        ),
        if (signUp)
          CustomTextField(
            label: "Re Password",
            isObscure: true,
            focusNode: logController.rePasswordFocusNode,
          ),
        if (signUp)
          CustomTextField(
            label: "Upload PDF",
            isObscure: true,
            focusNode: logController.rePasswordFocusNode,
            labelColor: ShopColors.primaryColor,
            
            suffixIcon:const Icon(
              MyFlutterApp.insert_drive_file,
            ),
          ),
      ],
    ),
  );
}
