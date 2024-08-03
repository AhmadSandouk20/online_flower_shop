import 'package:flutter/material.dart';

import 'package:online_flower_shop/View/logScreens.dart/login.dart';
import 'package:online_flower_shop/View/logScreens.dart/signIn.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Text("Logo"),
                  Positioned(
                    left: screenSize.width / 2,
                    top: screenSize.height / 300,
                    child: SvgPicture.string(
                      ellipse2,
                    ),
                  ),
                  Positioned(
                    left: screenSize.width / 2,
                    top: screenSize.height / 300,
                    child: Image.asset(
                      bunchOrchidwithLilaWallDecal,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.bottomLeft,
                clipBehavior: Clip.hardEdge,
                children: [
                  Positioned(
                    child: Image.asset(
                      ellipse1,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Image.asset(
                    download4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const ellipse2Asset = 'assets/images/Ellipse2.svg';
const bunchOrchidwithLilaWallDecal1Asset =
    'assets/images/BunchOrchidwithLilaWallDecal1.svg';

Widget logTextField(
    {required label,
    errorMessage,
    keyboardType,
    isObscure,
    required controller,
    required Size screenSize}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: (screenSize.height / 6).toDouble(),
      horizontal: (screenSize.height / 6).toDouble(),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: (screenSize.height / 6).toDouble(),
          horizontal: (screenSize.height / 6).toDouble(),
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

const ellipse2 =
    '''<svg width="224" height="243" viewBox="0 0 224 243" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.287291 -6.3061C-0.144396 25.908 5.80956 57.8921 17.8092 87.8201C29.8088 117.748 47.6192 145.034 70.2233 168.12C92.8275 191.206 119.783 209.639 149.55 222.368C179.318 235.097 211.314 241.872 243.713 242.306L247 -3L0.287291 -6.3061Z" fill="#F3E9F5"/>
</svg>''';

String bunchOrchidwithLilaWallDecal =
    'assets/images/Bunch_Orchid_with_Lila_Wall_Decal_1.png';

String ellipse1 = 'assets/images/Ellipse_1.png';
String download4 = 'assets/images/download__4.png';
