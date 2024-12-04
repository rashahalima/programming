import 'dart:convert';
import 'package:ask_me_app/components/functions.dart';
import 'package:ask_me_app/screens/export/detalis_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/drawerexport.dart';
import '../../components/myinkwell.dart';
import '../consultations/administrative.dart';
import '../consultations/behaviorism.dart';
import '../consultations/familial.dart';
import '../consultations/medical.dart';
import '../consultations/professional.dart';
import '../consultations/psychological.dart';
import 'package:http/http.dart'as http;
import '../favorite.dart';
import '../search.dart';

class HomeExp extends StatefulWidget {
  const HomeExp({Key? key}) : super(key: key);


  @override
  State<HomeExp> createState() => _HomeExpState();
}

class _HomeExpState extends State<HomeExp> {
List posts=[];
Future  getExport() async{

  final resposne = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users')) ;
var responsebody =jsonDecode(resposne.body);
setState(() {
  posts.addAll(responsebody);
});

}

@override
  void initState() {
  getExport();
    // TODO: implement initState
    super.initState();
  }
  List experts = ["rami", "Ahmad", "mohammad", "mahmod", "tareq", "mazen","sara","shady"];
  bool favorite = true;
  bool jk = true;
  var rrr;
  int j = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Get.to(() => Search());
              },
            ),
          ],
          backgroundColor: Colors.blueAccent.shade100,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("con".tr),
                icon: Icon(Icons.library_books_outlined),
              ),
              Tab(
                child: Text(
                  'exs'.tr,
                ),
                icon: Icon(Icons.person_rounded),
              )
            ],
          ),
        ),
        drawer: DrawerExport(),
        body: TabBarView(
          children: [
            GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: [
                  MyInkwell(text: "med".tr, onptap: (){Get.to(()=>Medical());}),
                  MyInkwell(text: "psy".tr,onptap: (){Get.to(()=>Pyschological());}),
                  MyInkwell(text: "profess".tr, onptap: (){Get.to(()=>Professional());}),
                  MyInkwell(text: "fam".tr, onptap: (){Get.to(()=>Familial());}),
                  MyInkwell(text: "adm".tr,  onptap: (){Get.to(()=>Administrative());}),
                  MyInkwell(text: "beh".tr, onptap: (){Get.to(()=>Behaviorism());}),

                ]),
            Container(
                color: Colors.lightBlue.shade50,
                child:
                posts==null||posts.isEmpty?
                Center(child: CircularProgressIndicator(),):
                ListView.separated(
                    separatorBuilder: (context, i) {
                      return SizedBox(
                        height: 5,
                      );
                    },
                    itemCount: experts.length,
                    itemBuilder: (context, i) {
                      return Container(
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
                                    child:  Image.asset('images/per6.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('${experts[i]}',

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
                                        Text('${posts[i]['phone']}',

                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.indigo,
                                            )),
                                        SizedBox(
                                          height: 3.0,
                                        ),
                                        Text('${posts[i]['id'].toString()}'

                                            ,
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


                                      icon:Icon( Icons.more_horiz,color: Colors.grey,)),
                                ],
                              ),
                            ),
                          ));
                    })
            ) ],
        ),
      ),
    );
  }

}






