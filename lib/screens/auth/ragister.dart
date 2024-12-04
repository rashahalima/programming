import 'package:ask_me_app/components/botton.dart';
import 'package:ask_me_app/components/mytextformfield.dart';
import 'package:ask_me_app/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../components/functions.dart';
import 'package:http/http.dart'as http;



class Regester extends StatefulWidget {
  const Regester({Key? key}) : super(key: key);

  @override
  State<Regester> createState() => _RegesterState();
}

class _RegesterState extends State<Regester> {
  TextEditingController Name=TextEditingController();
  TextEditingController Password=TextEditingController();
  TextEditingController Email=TextEditingController();
  TextEditingController Repassword=TextEditingController();
  final _formkey = GlobalKey<FormState>();

  void Register(String name,email,password,repassword)async
  {
    try{
      var response = await  http.post(Uri.parse('http://127.0.0.1:8000/api/API/register'),
          body:{
            'name':name,
            'email': email,
            'password':password,
            'password_confirmation':repassword
          }
      );
      if(response.statusCode==200){

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.lightBlue.shade100,
        body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 70,),
              Text('Ask Me',style:
              TextStyle(
                fontSize: 40,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold,
                color:Colors.lightBlue.shade600, )),
              SizedBox(height: 30,),

              SafeArea(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      //  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      // This will be the login form
                      child: Column(
                        children: [
                          Text(
                            'please_reg'.tr,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'JosefinSans',
                            ),
                          ),
                          Form(
                              key: _formkey,
                              child: Column(
                                children: [
                                  MyTextFormField(
                                    hint: 'enter n'.tr,
                                    valid:  (text) {
                                      return validName(text!);
                                    },
                                    textInputType: TextInputType.name,
                                    Mycontroller: Name,
                                    obscureText: false,
                                    label:Text('nam'.tr) ,),

                                  MyTextFormField(
                                    hint: 'enter e'.tr,
                                    valid:  (text) {
                                      return validEmail(text!);
                                    },
                                    textInputType: TextInputType.emailAddress,
                                    Mycontroller: Email,
                                    obscureText: false,
                                    label:Text('em'.tr) ,),

                                  MyTextFormField(
                                    hint:'enter p'.tr,
                                    valid:  (text) {
                                      return validPassword(text!);
                                    },
                                    textInputType: TextInputType.visiblePassword,
                                    Mycontroller: Password,
                                    obscureText: false,
                                    label:Text('pas'.tr) ,),

                                  MyTextFormField(
                                    hint:  'enter p'.tr,
                                    valid:  (text) {
                                      return validPassword(text!);
                                    },
                                    textInputType: TextInputType.visiblePassword,
                                    Mycontroller: Repassword,
                                    obscureText: false,
                                    label:Text('re_pass'.tr) ,),

                                  Button(child: Text('reg'.tr,
                                    style: TextStyle(fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),),
                                    onpressed:(){
                                      Register(Name.text.toString(),Email.text.toString(),Password.text.toString(),Repassword.text.toString());
                                      if(_formkey.currentState!.validate()){
                                        Get.to(() => Signin());

                                      }
                                    },
                                    color:  Colors.lightBlueAccent.withOpacity(0.8),),


                                ],
                              )),
                        ],
                      )))
            ])));
  }
}

