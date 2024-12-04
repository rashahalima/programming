import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class E_wallet extends StatefulWidget {
  const E_wallet({Key? key}) : super(key: key);

  @override
  State<E_wallet> createState() => _E_walletState();
}

class _E_walletState extends State<E_wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wallet".tr),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade100,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),


        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              //  height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                margin: EdgeInsets.all(15),
                child: Image.asset('images/wallet3.jpg',width: double.infinity,fit: BoxFit.cover,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                   ),
                clipBehavior: Clip.antiAliasWithSaveLayer,




              ),

              SizedBox(height: 10,),
              Card(color: Colors.white70,
                  margin: EdgeInsets.all(13),
                  child:Container(
                      padding: EdgeInsets.all(12),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('curr_bla'.tr,
                            textDirection:TextDirection.ltr ,
                            style: TextStyle(
                              fontSize: 25,color: Colors.purple.shade700,
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.bold,

                            ),),
                          SizedBox(height: 10,),
                          Divider(color: Colors.lightBlue,indent: 15,thickness: 2),
                          Text('2000 Dollars',
                            textDirection:TextDirection.ltr ,
                            style: TextStyle(
                              fontSize: 25,
                              //color: Colors.purple.shade700,
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.bold,

                            ),),
                        ],)

                  )
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
