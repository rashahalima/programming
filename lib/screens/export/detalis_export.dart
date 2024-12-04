import 'package:ask_me_app/screens/takeanappointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../voice_calls.dart';

class Detalis_Export extends StatefulWidget {
  const Detalis_Export({Key? key}) : super(key: key);

  @override
  State<Detalis_Export> createState() => _Detalis_ExportState();
}

class _Detalis_ExportState extends State<Detalis_Export> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.lightBlue.shade50,
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.call_rounded),
              onPressed: () {
                Get.to(()=>Voice_Calls()
                );
              },
            ),],
          title: Text('det'.tr),
          backgroundColor: Colors.blueAccent.shade100,),
        body: SingleChildScrollView(
          child:   Container(
            padding: EdgeInsets.all(12),
            child: Center(child: Column(
              children: [
            GestureDetector(child: ClipOval(
            child: Container(
              height: 130,
              width: 130,
              
              padding: EdgeInsets.all(12),
              color: Colors.grey.shade300,
              child: Icon(Icons.person_sharp, size: 50,
                  color: Colors.grey.shade500),
            ),
            ), onTap: () {},),
            SizedBox(height: 12,),
            Text('Dr.Salah Alalabi', style: TextStyle(fontSize: 25,
                    fontFamily: 'NanumMyeongjo',
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                RatingBarIndicator(
                    rating: 3,
                    itemCount: 5,
                    itemBuilder: (_,i){
                      return Icon(Icons.star_rounded,color: Colors.amber);

                   }),
                
                SizedBox(height: 10,),
                Card(
                   child:Container(
                     padding: EdgeInsets.all(12),
                     child:Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [

                       Text('exper'.tr,
                       textDirection:TextDirection.ltr ,
                       style: TextStyle(
                         fontSize: 25,color: Colors.purple.shade700,
                         fontFamily: 'JosefinSans',
                         fontWeight: FontWeight.bold,

                       ),),
                       SizedBox(height: 10,),
                       Text('An expert in the field of psychological counseling and behavioral guidance, he works at the World Health Organization, '
                           'and a general counsel at the Child Rights Association.'),

                     ],)

                       )
               ),
                SizedBox(height: 10,),
                Card(
                    child:Container(
                      padding: EdgeInsets.all(12),
                      child:Column(children: [
                        Row(children: [
                          Icon(Icons.phone,color: Colors.greenAccent.shade400),
                          SizedBox(width: 25,),
                          Text('098787657'),

                        ],) ,
                        Divider(color: Colors.lightBlue,endIndent: 8,thickness: 2),
                        Row(children: [
                          Icon(Icons.location_pin,color: Colors.red.shade600),
                          SizedBox(width: 25,),
                          Text('Damascus_Almazza'),

                        ],)
                      ],) )
                ),
                SizedBox(height: 10,),
                Card(
                    child:Container(
                        padding: EdgeInsets.all(12),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('con'.tr,
                              textDirection:TextDirection.ltr ,
                              style: TextStyle(
                                fontSize: 25,color: Colors.purple.shade700,
                                fontFamily: 'JosefinSans',
                                fontWeight: FontWeight.bold,

                              ),),
                            SizedBox(height: 10,),
                            Text('med'.tr),
                            Divider(color: Colors.lightBlue,endIndent: 8,thickness: 2),
                            Text('profess'.tr),
                            Divider(color: Colors.lightBlue,endIndent: 8,thickness: 2),
                            Text('adm'.tr),
                          ],)

                    )
                ),
                SizedBox(height: 10,),
                Card(
                    child:Container(
                        padding: EdgeInsets.all(12),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('da_tim'.tr,
                              textDirection:TextDirection.ltr ,
                              style: TextStyle(
                                fontSize: 25,color: Colors.purple.shade700,
                                fontFamily: 'JosefinSans',
                                fontWeight: FontWeight.bold,

                              ),),
                          SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,children: [
                            Text('sat'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                            Text('sun'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                            Text('mon'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),


                          ],),
                          SizedBox(height: 10,),

                            SizedBox(height: 10,),
                       //   Row(children: [
                            //  Text('To The Hour : ',style: TextStyle(color:Colors.pink.shade800)),
                            Text('1:30 ---> 3:30 '),

                       //   ],
                        //  ),
                          //  SizedBox(height: 10,),
                          ],)

                    )
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  child: MaterialButton(
                      onPressed: () {Get.to(()=>TakeAnAppointment());},
                      color: Colors.lightBlueAccent.withOpacity(0.8),
                      child:  Text('take_app'.tr,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20))),
                ),





              ]  ))

    )));
  }
}
