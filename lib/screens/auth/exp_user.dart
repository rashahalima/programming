import 'package:ask_me_app/screens/export/home.dart';
import 'package:ask_me_app/screens/user/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
//import 'package:shared_preferences/shared_preferences.dart';



class Exp_User extends StatefulWidget {
  const Exp_User({Key? key}) : super(key: key);

  @override
  State<Exp_User> createState() => _Exp_UserState();
}

class _Exp_UserState extends State<Exp_User> {


  final _formkey = GlobalKey<FormState>();
  bool isloading=false;
  static var select;

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
                          SizedBox( height: MediaQuery.of(context).size.height *0.3,),

                          Text(
                            'wel'.tr,
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Lobster',
                              //  fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12,),


                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              color: Colors.lightBlue.shade300,
                              width:  MediaQuery.of(context).size.width * 0.9,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              margin: EdgeInsets.all(12),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField(
                                  style: TextStyle(fontFamily: 'Kalam',fontSize: 18,),
                                  decoration: InputDecoration(border: InputBorder.none,
                                  ),
                                  validator: (text) {
                                    if( text==null||
                                        text.toString()==''||
                                        text.toString().isEmpty

                                    )
                                      return 'Can\'t be empty';

                                  },

                                  hint: Text('please'.tr),
                                  items: ['exp'.tr, 'user'.tr]
                                      .map((e) => DropdownMenuItem(
                                    child: Text('$e'),
                                    value: e,
                                  ))
                                      .toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      select = val;
                                    });
                                  },
                                  value: select,
                                  dropdownColor:Colors.lightBlue.shade200,
                                ),
                              )),
                          SizedBox(height: 30,),
                          MaterialButton(
                            onPressed: () {

                              if(_formkey.currentState!.validate()) {

                                if(select=='Export')
                                {
                                  Get.to(() => HomeExp());
                                }
                                else
                                {
                                  Get.to(() => HomeUser());

                                }
                              }
                            },
                            child: Text('Start'.tr,style: TextStyle(fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),),
                            color:  Colors.lightBlueAccent.withOpacity(0.8),),


                        ]),
                      ))
              ),
            )));
  }

}
