import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String ?hint;
  final String? Function(String?)? valid;
  final TextEditingController Mycontroller;
  final TextInputType textInputType;
  final Widget ?prefixIcon;
  final Widget ?suffixIcon;
  final Widget ?label;
  final int ?maxline;
  final bool obscureText;

  const MyTextFormField({Key? key,this.hint,this.valid, required this.textInputType, required this.Mycontroller, this.prefixIcon, required this.obscureText, this.suffixIcon, this.label, this.maxline}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10),
      child: TextFormField(
        controller:Mycontroller ,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: textInputType,
        obscureText: obscureText ,
        validator: valid,
        maxLines:maxline ,
        decoration: InputDecoration(
            label: label,
            prefixIcon:prefixIcon,
            suffixIcon:suffixIcon ,
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.black87, width: 1,))),



      ),

    );

  }
}
