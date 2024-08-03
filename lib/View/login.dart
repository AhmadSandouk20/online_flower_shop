import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Container(
            padding:
                EdgeInsets.only(left: MediaQuery.sizeOf(context).width - 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
