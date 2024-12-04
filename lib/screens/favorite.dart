import 'package:ask_me_app/screens/export/detalis_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

//import 'package:fluttertoast/fluttertoast.dart';

import '../components/evaluation.dart';
import '../components/functions.dart';
import 'export/home.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

    appBar: AppBar(
      centerTitle: true,
    title: Text('fav'.tr),
    backgroundColor: Colors.blueAccent.shade100,
    ),
    body: Container(
    margin: EdgeInsets.all(10),
    child: ListView.builder(
    itemCount: r.length,
    itemBuilder: (context, m) {
    return Container(
    margin: EdgeInsets.all(8),
    child: InkWell(
    onTap: () {
    Get.to(Detalis_Export());
    },
    highlightColor: Colors.grey,
    child: Container(
    padding: const EdgeInsets.all(14.0),
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
    BorderRadiusDirectional.circular(60.0),
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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "${r[m]}",
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
    Text('Phone : ',
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
    fontSize: 14.0,
    color: Colors.indigo,
    )),
    SizedBox(
    height: 3.0,
    ),
    Text('Address : ',
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
    fontSize: 14.0,
    color: Colors.indigo,
    )),
      SizedBox(height: 3.0,),
      Evaluation(itemsize: 1,)
    ],
    ),
    ),
    IconButton(
    onPressed: () {
    setState(() {
    r.remove(r[m]);
    });
   BuildSnackBarRemove(context);
    },
    icon: Icon(
    Icons.favorite,
    size: 28,
    color: Colors.red,
    )),
    ],
    ),
    ),
    ));
    })));
    }
    }

    List r = [];




