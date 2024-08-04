import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:online_flower_shop/Conrtoller/LogControllers/loginController.dart';
import 'package:online_flower_shop/Styles/colors.dart';
import './widgets/loginWidgets.dart';
import '../../Styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    LoginController loginController = Get.find<LoginController>();
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        // fit: StackFit.expand,
        // alignment: Alignment.topRight,
        children: [
          const Positioned(
            left: 50,
            top: 100,
            child: Text(
              "Logo",
              style: TextStyle(
                color: AppColors.basicColor,
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
              color: AppColors.rosesPinkBackground,
              width: MediaQuery.of(context).size.width / 2.3,
            ),
          ),
          Positioned(
            right: 20,
            top: 0,
            height: 230,
            child: Image.asset(
              width: MediaQuery.of(context).size.width / 2,
              loginController.bunchOrchidwithLilaWallDecal,
            ),
          ),
          Positioned(
            child: Container(
              height: screenSize.height * 5 / 4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logTextField(
                    label: "Email",
                    controller: loginController.emailController,
                    screenSize: screenSize,
                  ),
                  logTextField(
                    label: "Phone Number",
                    controller: loginController.phoneNumberController,
                    keyboardType: TextInputType.number,
                    screenSize: screenSize,
                  ),
                  logTextField(
                    label: "Password",
                    controller: loginController.passwordController,
                    screenSize: screenSize,
                  ),
                  const Center(
                    child: Text(
                      "should be none less than 8 characters",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Text(
                    "Dont have an account? Sign up",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        35,
                      ),
                    ),
                    width: screenSize.width / 1.8,
                    // height: ScrollView,
                    child: MaterialButton(
                      onPressed: () {},
                      color: AppColors.basicColor,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              loginController.ellipse1,
              color: AppColors.rosesPinkBackground,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              loginController.download4,
            ),
          ),
        ],
      ),
    );
  }
}
