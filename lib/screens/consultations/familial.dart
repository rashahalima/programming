import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/evaluation.dart';
import '../../components/functions.dart';
import '../export/detalis_export.dart';
import '../favorite.dart';
class Familial extends StatefulWidget {
  const Familial({Key? key}) : super(key: key);

  @override
  State<Familial> createState() => _FamilialState();
}

class _FamilialState extends State<Familial> {
  List experts = ["rami", "Ahmad", "mohammad", "mahmod", "tareq", "mazen"];
  bool favorite = true;
  bool jk = true;
  var rrr;
  int j = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("fam".tr),
        backgroundColor: Colors.blueAccent.shade100,),
      body: ListView.separated(
        separatorBuilder: (context,i){
          return SizedBox(height: 5,);
        },
        itemCount: experts.length,
        itemBuilder:(context,i){
          return  Container(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Get.to(()=>Detalis_Export());
                },
                highlightColor: Colors.grey,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadiusDirectional.circular(
                                60.0),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.TfyBmmLxHDLTxAuw8WRNyQHaIb?w=178&h=202&c=7&r=0&o=5&pid=1.7'),
                            fit: BoxFit.cover,
                          )
                        //Image.file(File('http://192.168.1.110:8000${doctor?.image}'),fit: BoxFit.cover,),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${experts[i]} ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text('phon'.tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.indigo,
                                )),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text('add'.tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.indigo,
                                )),

                            SizedBox(height: 3.0,),
                            //    Evaluation(itemsize: 1,)
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: (){

                            final AlertDialog alert = AlertDialog(
                              title:  Text('options'.tr,
                                  style: TextStyle(color: Colors.grey, )),
                              contentPadding: const EdgeInsets.all(12),
                              content: SizedBox(
                                height: 130,
                                child: Column(
                                  children: [
                                    const Divider(),
                                    Row(children: [
                                      IconButton(

                                          disabledColor: Colors.grey,
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            if (r.isEmpty) {
                                              r.add(experts[i]);
                                              BuildSnackBarAdd(context);
                                            } else {
                                              for (int m = 0; m < r.length; m++) {
                                                if (experts[i] != r[m]) {
                                                  j++;
                                                }
                                              }
                                              if (j == r.length) {
                                                r.add(experts[i]);
                                                //   Navigator.of(context).pop();
                                                BuildSnackBarAdd(context);
                                                ;
                                              } else {
                                                r.remove(experts[i]);

                                                BuildSnackBarRemove(context);
                                                //  Navigator.of(context).pop();
                                              }
                                              j = 0;
                                            }
                                          },
                                          icon: Icon(Icons.favorite,
                                              size: 28, color: Colors.red)),
                                      Text('fav'.tr+'(add/remove).',style: TextStyle(),),


                                    ],),
                                    SizedBox(height: 2,),
                                    Row(children: [
                                      IconButton(
                                          disabledColor: Colors.blueGrey,
                                          onPressed: () {

                                            BuildAlertDialogvaluation(context);

                                          },
                                          icon: Icon(Icons.stars,
                                              size: 25, color: Colors.amber)),


                                      Text('valuation'.tr,style: TextStyle(),)
                                    ],)
                                  ],
                                ),
                              ),
                              backgroundColor: Colors.white,
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },

                              // barrierColor: Colors.blueAccent.withOpacity(0.3),
                            );
                          },

                          icon:Icon( Icons.more_horiz,color: Colors.grey,))
                    ],
                  ),
                ),
              ));
        } ,),
    );
  }
}