
import 'package:ask_me_app/components/evaluation.dart';
import 'package:ask_me_app/locale/locale.dart';
import 'package:ask_me_app/locale/locale_controller.dart';
import 'package:ask_me_app/screens/splash.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:ask_me_app/locale/locale.dart';

//late SharedPreferences shared;
void main()  {
 // WidgetsFlutterBinding.ensureInitialized();
 //shared=await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    Get.put(ConstLocaleController);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      locale: Get.deviceLocale,
      translations: ConstLocale(),
      getPages: [
        GetPage(
          name: '/splash', page: () => Splash(),
        ),
        GetPage(
          name: '/Eval', page: () => Evaluation(),
        ),

      ],
    );
  }
}



