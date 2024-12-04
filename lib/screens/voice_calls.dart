import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Voice_Calls extends StatefulWidget {
  final String? chanel;
 // final ClientRole? role;

  const Voice_Calls({Key? key, this.chanel,
//    this.role
  }) : super(key: key);

  @override
  State<Voice_Calls> createState() => _Voice_CallsState();
}


class _Voice_CallsState extends State<Voice_Calls> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
        title: Text('voice'.tr),
    backgroundColor: Colors.blueAccent.shade100,),

    ) ;
  }
}
