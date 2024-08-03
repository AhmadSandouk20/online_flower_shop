import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/View/homePage.dart';
import 'package:online_flower_shop/Styles/Themes/themes.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      getPages: [GetPage(name: '/', page: () => HomePage())],
      initialRoute: '/',
    );
  }
}

init() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}
