import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/Bindings/logBindings.dart';
import 'package:online_flower_shop/Middlewares/shopMiddleware.dart';
import 'package:online_flower_shop/View/homePage.dart';
import 'package:online_flower_shop/Styles/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  init();
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const MyApp(),
  //   ),
  // );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      initialBinding: LogBindings(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          // middlewares: [
          //   ShopMiddleWare(),
          // ],
        )
      ],
      initialRoute: '/',
    );
  }
}

init() {
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );
}
