

import 'package:ask_me_app/locale/locale_controller.dart';
import 'package:ask_me_app/screens/e_wallet.dart';
import 'package:ask_me_app/screens/export/all_appointment.dart';
import 'package:ask_me_app/screens/auth/ragister.dart';
import 'package:ask_me_app/screens/voice_calls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../screens/export/profile.dart';
import '../screens/favorite.dart';


TextStyle textStyle=const TextStyle(
    color: Colors.black87,
    fontSize: 18,
    fontFamily: 'NanumMyeongjo',
    fontWeight: FontWeight.bold);

ListTile listTile(String text,void Function()? onTap,Icon icon) {

  return ListTile(
      title: Text(text,
          style:textStyle),
      leading: icon,
      onTap: onTap);
}

class DrawerExport extends StatelessWidget {
  const DrawerExport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ConstLocaleController());
    ConstLocaleController _constlocal=Get.find();

    return Drawer(
      child:SingleChildScrollView(
        child:Column(

          children: <Widget>[
           Container(
             child:UserAccountsDrawerHeader(
               accountEmail: const Text('www.Hadi@gmail.com',
                   style: TextStyle(color: Colors.black54)),
               accountName: const Text('Hadi Alhadi',
                   style: TextStyle(color: Colors.white)),
               currentAccountPicture: const CircleAvatar(
                   backgroundColor: Colors.indigoAccent,
                   child: Icon(Icons.person)),
               decoration: BoxDecoration(
                 color: Colors.blueAccent.shade100,

               ),
             ),),

            listTile("main".tr, () { Navigator.pop(context); }, const Icon(Icons.home,
                color: Colors.blueAccent, size: 20)),
            listTile("fav".tr, () {Get.to(()=>Favorite()); }, const Icon(Icons.favorite,
                color: Colors.blueAccent, size: 20)),
            listTile("prof".tr, () { Get.to(()=>Profile());}, const Icon(Icons.person,
                color: Colors.blueAccent, size: 20)),
            listTile("voice".tr, () {Get.to(()=>Voice_Calls());}, const Icon(Icons.call_rounded,
                color: Colors.blueAccent, size: 20)),
            ExpansionTile(title:Text('chlan'.tr,style: textStyle,),leading: Icon(Icons.language,
                color: Colors.blueAccent, size: 20),children: [
              ListTile(title: Text('arb'.tr), onTap: () {
                _constlocal.ChangeLang('ar');
              },
              ),
              ListTile(title: Text("eng".tr), onTap: () {
                _constlocal.ChangeLang('en');

              },
              ),
            ],),

            listTile("wallet".tr, () { Get.to(E_wallet());}, const Icon(Icons.wallet_giftcard_outlined,
                color: Colors.blueAccent, size: 20)),
            listTile('appoin'.tr, () {Get.to(()=>All_Appointment());}, const Icon(Icons.access_time_sharp,
                color: Colors.blueAccent, size: 20)),

            const Divider(color: Colors.grey, thickness: 1,),
            listTile("record".tr, () {
              //*  shared.clear();*//*
              Get.to(() => Regester());}, const Icon(Icons.exit_to_app,
                color: Colors.blueAccent, size: 20)),

          ],
        )

      ),
    );
  }
}
