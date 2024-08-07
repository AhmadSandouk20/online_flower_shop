import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Conrtoller/LogControllers/loginController.dart';
import './widgets/loginWidgets.dart';
import '../../Styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    LoginController loginController = Get.find<LoginController>();
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height * 3 / 4,
                child: Stack(
                  children: [
                    const Positioned(
                      left: 50,
                      top: 100,
                      child: Text(
                        "Logo",
                        style: TextStyle(
                          color: ShopColors.primaryColor,
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
                        color: ShopColors.lighterPinkColor,
                        width: screenSize.width / 4,
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 0,
                      height: 230,
                      child: Image.asset(
                        width: screenSize.width / 2,
                        loginController.bunchOrchidwithLilaWallDecal,
                      ),
                    ),
                    middle(
                      context: context,
                      controller: loginController,
                      signUp: false,
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: SizedBox(
                height: (screenSize.height - 30.h) / 4,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image.asset(
                        loginController.ellipse1,
                        color: ShopColors.lighterPinkColor,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
