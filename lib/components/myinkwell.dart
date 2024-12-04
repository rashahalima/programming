import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyInkwell extends StatelessWidget {
  final String text;
  final  Function() onptap;
  const MyInkwell({Key? key, required this.text, required this.onptap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        child: Card(margin: EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(text.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,fontFamily:'Kalam')
              )]),
        ),
        onTap: onptap
      );
  }
}
