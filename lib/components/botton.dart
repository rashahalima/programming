import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final  Function() onpressed;
  final  Color? color;
  final  Widget ?child;
  const Button({Key? key, this.color, required this.onpressed, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:EdgeInsets.all(20) ,
      margin: EdgeInsets.all(12),
      child:MaterialButton(
        color: color,
        onPressed: onpressed,
        child:child,




        //   child:Text(Text),
      ),

    );
  }
}

