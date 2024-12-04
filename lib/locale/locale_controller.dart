import 'package:get/get.dart';
import 'package:flutter/material.dart';
class ConstLocaleController extends GetxController{

void ChangeLang(String codelang){
  Locale locale=Locale(codelang);
  Get.updateLocale(locale);


}

}