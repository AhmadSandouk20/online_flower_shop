import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/Bindings/SignUpBindings.dart';
import 'package:online_flower_shop/Styles/colors.dart';
import 'package:online_flower_shop/Styles/fonts.dart';
import 'package:online_flower_shop/View/CustomWidgets/customTextField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_flower_shop/View/logScreens.dart/widgets/logWidgets.dart';
import 'package:online_flower_shop/View/logScreens.dart/signUp.dart';

Widget middle({required context, required controller, required signUp}) {
  return Positioned(
    top: 220.h,
    bottom: 0,
    right: 0,
    left: 0,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logForm(context: context, logController: controller, signUp: signUp),
          const Text(
            "Should be none less than 8 characters",
          ),
          SizedBox(
            height: 12.h,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forget Password?",
              style: TextStyle(
                color: Colors.red,
                fontFamily: ShopFonts.roboto,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          InkWell(
            onTap: () => Get.to(
              () => const SignUpScreen(),
              binding: Signupbindings(),
            ),
            child: Text.rich(
              style: const TextStyle(
                fontFamily: ShopFonts.roboto,
                decoration: TextDecoration.underline,
              ),
              TextSpan(
                text: "Dont have an account? ",
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: ShopColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            ),
            minWidth: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 15,
            onPressed: () {},
            color: ShopColors.primaryColor,
            child: Text(
              "Login",
              style: TextStyle(
                fontFamily: ShopFonts.roboto,
                fontWeight: FontWeight.w900,
                fontSize: 15.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
