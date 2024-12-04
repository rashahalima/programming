import 'dart:async';
import 'package:ask_me_app/screens/auth/exp_user.dart';
import 'package:ask_me_app/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

   void initState() {
     super.initState();
     Timer(Duration(seconds: 3),
             (){
       Get.to(()=>Signin());
         }
     );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade100,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ask Me'.tr,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Lobster',
                  color:Colors.lightBlue.shade600,
                    fontWeight: FontWeight.w100,
                ),
              ),

            ],
          ),
        ));
  }
}
