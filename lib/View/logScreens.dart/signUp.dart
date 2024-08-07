import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_flower_shop/View/logScreens.dart/widgets/logWidgets.dart';
import 'package:online_flower_shop/View/logScreens.dart/signUpClipper.dart';

import '../../Conrtoller/LogControllers/SignUpController.dart';
import '../../Styles/fonts.dart';
import '../CustomWidgets/customTextField.dart';
import '../../Styles/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.find<SignUpController>();

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: ShopColors.primaryColor,
                    fontSize: 34.w,
                    fontFamily: ShopFonts.roboto,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(
                    signUpController.download5,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 150.h,
            right: 0,
            left: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: ShopColors.lightGreyColor,
                              foregroundColor: ShopColors.lightGreyColor,
                              foregroundImage: const AssetImage(
                                "assets/images/SignUp/profile.png",
                              ),
                              radius: 55.h,
                            ),
                            Positioned(
                              bottom: -10.h,
                              right: -10.h,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_a_photo,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Add Profile Photo",
                        )
                      ],
                    ),
                  ),
                  logForm(
                    context: context,
                    logController: SignUpController(),
                    signUp: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialButton(
                    color: ShopColors.primaryColor,
                    minWidth: 200.w,
                    height: 70.h,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //  ElevatedButton.styleFrom(
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: 20.h,
                    //     vertical: 15.h,
                    //   ),
                    //   backgroundColor: ShopColors.primaryColor,
                    // )

                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: ShopColors.darkGreyColor,
                          decoration: TextDecoration.underline,
                        ),
                        text: "Already have an account? ",
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Login',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: ShopColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
