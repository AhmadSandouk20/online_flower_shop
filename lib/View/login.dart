import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'package:online_flower_shop/Conrtoller/LogControllers/loginController.dart';
import 'package:online_flower_shop/Styles/colors.dart';
import 'logScreens.dart/widgets/loginWidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    LoginController loginController = Get.find<LoginController>();
    return Scaffold(
      backgroundColor: Color(0xE6F6F6FF),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Positioned(
                  left: 50,
                  top: 150,
                  child: Text(
                    "Logo",
                    style: TextStyle(
                      color: purple,
                      fontSize: 64,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Image.asset(
                    loginController.ellipse2,
                    color: pinkBg,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  height: 300,
                  child: Image.asset(
                    loginController.bunchOrchidwithLilaWallDecal,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                logTextField(
                  label: "Email",
                  controller: loginController.emailController,
                  ctx: context,
                ),
                logTextField(
                  label: "Phone Number",
                  controller: loginController.phoneNumberController,
                  ctx: context,
                  keyboardType: TextInputType.number,
                ),
                logTextField(
                  label: "Password",
                  controller: loginController.passwordController,
                  ctx: context,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                  left: 0,
                  child: Image.asset(
                    loginController.ellipse1,
                    color: pinkBg,
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Image.asset(
                    loginController.download4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
