import 'package:ask_me_app/screens/consultations/familial.dart';
import 'package:ask_me_app/screens/consultations/medical.dart';
import 'package:ask_me_app/screens/consultations/professional.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'consultations/administrative.dart';
import 'consultations/psychological.dart';


class Search extends StatefulWidget {
  @override
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: Text("search".tr,),

      ),
      body: Container(
        margin: EdgeInsets.all(2),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child:Text(
                "find_con".tr,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'NanumMyeongjo',
                  fontWeight: FontWeight.bold,
                ),
              ), ),


            GestureDetector(
              child: Container(

              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: Text(
                  "con".tr,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600
                  ),
                ),
                tileColor:  Colors.blue.shade200,
                trailing: Icon(Icons.search),
              ),
            ), onTap:(){ showSearch(context: context, delegate: datasearch2());}),


            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child:Text(
                "find_exp".tr,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'NanumMyeongjo',
                  fontWeight: FontWeight.bold,
                ),
              ), ),

            GestureDetector(
              child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: Text(
                  "exs".tr,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600
                  ),
                ),
                tileColor: Colors.blue.shade200,
                trailing:  Icon(Icons.search)),

            ) ,onTap:(){showSearch(context: context, delegate: datasearch());} ,),

          ],
        ),
      ),
    );
  }
}


class datasearch extends SearchDelegate {
  List experts = ["rami", "Ahmad", "mohammad", "mahmod", "tareq", "mazen"];

  @override
  List<Widget>? buildActions(BuildContext context) {

    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    var name = "jj";
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 22),
        ),
        ListTile(
          title: Text("$query"),
          leading: IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      color: Colors.grey[200],
                      height: 200,
                    );
                  });
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterexperts =
    experts.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemCount: query == " " ? experts.length : filterexperts.length,
      itemBuilder: ((context, index) => InkWell(
        onTap: () {
          query = filterexperts[index];
          showResults(context);
        },
        child: Container(
          padding: EdgeInsets.all(10),
          child: query == ""
              ? Text(
            "${experts[index]}",
            style: TextStyle(fontSize: 22),
          )
              : Text(
            "${filterexperts[index]}",
            style: TextStyle(fontSize: 22),
          ),
        ),
      )),
    );
  }
}

class datasearch2 extends SearchDelegate {
  List consulation = [
    "med".tr,
    "profess".tr,
    "psy".tr,
    "fam".tr,
    "adm".tr
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterconsulation =
    consulation.where((element) => element.startsWith(query))
        .toList();

    return Container(
      child: ListView.builder(
        itemCount: query == " " ? consulation.length : filterconsulation.length,
        itemBuilder: ((context, index) => InkWell(
          onTap: () {
            index == 0
                ? Get.to(()=>Medical())
                : index == 1
                ? Get.to(()=>Professional())
                : index == 2
                ? Get.to(()=>Pyschological())
                : index == 3
                ? Get.to(()=>Familial())
                : Get.to(()=>Administrative());
            // query == " " ? consulation.length : filterconsulation.length;

           query = filterconsulation[index];

            showResults(context);
          },
          child: ListTile(
            leading: index == 0
                ? Container(
                padding: EdgeInsets.all(6),
                child: Image.asset("images/med.png"))
                : index == 1
                ? Container(
                padding: EdgeInsets.all(10),
                child: Image.asset("images/prof.jpg"))
                : index == 2
                ? Container(
                padding: EdgeInsets.all(9),
                child: Image.asset("images/psy.png"))
                : index == 3
                ? Container(
                padding: EdgeInsets.all(6),
                child: Image.asset("images/family.png"))
                : Container(
                padding: EdgeInsets.all(6),
                child: Image.asset("images/bus.jpg")),
            // padding: EdgeInsets.all(10),
            title: query == ""
                ? Text(
              "${consulation[index]}",
              style: TextStyle(fontSize: 22),
            )
                : Text(
              "${filterconsulation[index]}",
              style: TextStyle(fontSize: 22),
            ),
          ),
        )),
      ),
    );
  }
}
