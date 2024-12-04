import 'dart:convert';
import 'package:ask_me_app/components/mytextformfield.dart';
import 'package:ask_me_app/components/functions.dart';
import 'package:ask_me_app/screens/auth/exp_user.dart';
import 'package:ask_me_app/screens/auth/ragister.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
//import 'package:shared_preferences/shared_preferences.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  bool passwordvisible = true;
  bool isloading=false;


  void Login(String email,password)async
  {
    try{
      var response = await  http.post(Uri.parse('http://127.0.0.1:8000/api/logina'),

      body:{
        'email': email,
        'password':password,
          }
      );

if(response.statusCode==200){
var data =jsonDecode(response.body.toString());
  print(data['token']);
  print('success');
}
else
  {
    print('Failed');
  }

    }
        catch(e)
        {
          print(e.toString());

        }


  }

  // async{
  //    print('11111');
  //   var responce=await http.post(Uri.parse('http://192.168.137.65:8000/api/logina'),
  //       body: <String,String>{
  //
  //         'email':Email.text,
  //         'password':Password.text,
  //       });
  //   print('responce=${responce.body}');
  //   if(responce.statusCode==200)
  //   {
  //     var responsebody=jsonDecode(responce.body);
  //     // String token=js['token'];
  //     print('success');
  //
  //     return responsebody;
  //   }
  //   else
  //   {
  //      print('Failed!');
  //     showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //               title: Text("Note",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
  //               content: Container(
  //                 height: 60,
  //                 width: 100,
  //                 child: Text(
  //                     "Error in email or Password or An Account not Found"),
  //               ));
  //         });
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.lightBlue.shade100,
        body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                  padding: EdgeInsets.all(12),
                  child: Center(
                      child: Form(
                        key: _formkey,
                        child: Column(children: [
                          SizedBox( height: MediaQuery.of(context).size.height *0.2,),
                          Text('Ask Me',style:
                          TextStyle(
                            fontSize: 40,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.bold,
                            color:Colors.lightBlue.shade600, )),
                          SizedBox(height: 50,),
                          Text(
                            'sig'.tr,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize:30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'JosefinSans',
                            ),
                          ),
                          SizedBox(height: 12,),
                          MyTextFormField(
                            label: Text('em'.tr),
                            hint: 'enter e'.tr,
                            textInputType: TextInputType.emailAddress,
                            obscureText: false,
                            Mycontroller: Email,
                            valid: (text) {
                              return validEmail(text!);
                            },
                            prefixIcon: Icon(Icons.email),
                          ),

                          MyTextFormField(
                              maxline: 1,
                              label: Text('pas'.tr),
                              hint: 'enter p'.toString().tr,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: passwordvisible,
                              Mycontroller: Password,
                              valid: (text) {
                                return validPassword(text!);
                              },
                              prefixIcon: Icon(Icons.password_rounded),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordvisible = !passwordvisible;
                                    });
                                  },
                                  icon: passwordvisible
                                      ? const Icon(Icons.visibility, size: 15)
                                      : const Icon(Icons.visibility_off, size: 15))),

                          SizedBox(
                            height: 12,
                          ),

                          MaterialButton(
                            onPressed: () {
                               Login(Email.text.toString(), Password.text.toString());

                             //Login(Email.text.toString(),Password.text.toString());
                              if(_formkey.currentState!.validate()) {
                                Get.to(() => Exp_User());
                              }
                            },
                            child: Text('login'.tr,style: TextStyle(fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),),
                            color:  Colors.lightBlueAccent.withOpacity(0.8),),

                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'account'.tr,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'JosefinSans',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'cr'.tr,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(Regester());
                                      },
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontFamily: 'JosefinSans',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ))),
            )));
  }

}
