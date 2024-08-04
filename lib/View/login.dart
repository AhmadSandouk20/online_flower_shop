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
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  left: 80,
                  top: 200,
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
            flex: 4,
            child: Column(
              children: [
                logTextField(
                  label: "Email",
                  controller: loginController.emailController,
                  screenSize: screenSize,
                ),
                logTextField(
                  label: "Phone Number",
                  controller: loginController.phoneNumberController,
                  screenSize: screenSize,
                  keyboardType: TextInputType.number,
                ),
                logTextField(
                  label: "Password",
                  controller: loginController.passwordController,
                  screenSize: screenSize,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                  left: 0,
                  child: Image.asset(
                    loginController.ellipse1,
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
