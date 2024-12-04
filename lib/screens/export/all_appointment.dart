import 'package:flutter/material.dart';
import 'package:get/get.dart';


List date = ["  user1  ", "user2", "user3", "user4", "user 5"];
List phone=['098867543','0976543233','0983343243','099876543','098867543','097667543','098967543',];

int? y = 1;

class All_Appointment extends StatefulWidget {
  const All_Appointment({super.key});

  @override
  State<All_Appointment> createState() => _All_AppointmentState();
}

class _All_AppointmentState extends State<All_Appointment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.blueAccent.shade100,
            title: Text(
              'all_app'.tr,
            ),
            centerTitle: true,
            bottom: TabBar(
                indicatorColor: Colors.white,

                labelColor: Colors.white,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text("sun".tr,style: TextStyle(fontSize: 16)),
                  ),
                  Tab(
                    child: Text("mon".tr,style: TextStyle(fontSize: 16)),
                  ),
                  Tab(
                    child: Text("tues".tr,style: TextStyle(fontSize: 16)),
                  ),
                  Tab(
                    child: Text('wed'.tr,style: TextStyle(fontSize: 16)),
                  ),
                  Tab(
                    child: Text("thu".tr,style: TextStyle(fontSize: 16)),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Container(
              padding: EdgeInsets.only(top: 20),

              child: ListView.builder(
                itemCount: date.length,
                itemBuilder: (context, index) =>InkWell(
                  child: Container(
                    color: Colors.deepPurple.shade200,
                    margin: EdgeInsets.all(15),
                    child: Container(

                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 3, color: Colors.deepPurple.shade300)),
                      child:
                         Card(
                           color: Colors.deepPurple.shade100,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Text(
                                  "user ${index + 1}".tr,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 170, 51, 91)),
                                ),
                                Text(
                                  '${phone[index]}',
                                  style: TextStyle(

                                      color: Color.fromARGB(255, 170, 51, 91)),
                                ),

                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    Text(
                                      "${index + 1}:00 ",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.red),
                                    ),
                                    Text(
                                      " PM",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black54),
                                    ),

                                    Text(
                                      " ---> ",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "${index + 1}:30 ",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.red),
                                    ),
                                    Text(
                                      " PM",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black54),
                                    ),





                                  ],
                                )
                              ],),
                          )
                        ),



                    ),
                  ),
                  onTap:(){} ,
                )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),

              child: ListView.builder(
                  itemCount: date.length,
                  itemBuilder: (context, index) =>InkWell(
                    child: Container(
                      color: Colors.deepPurple.shade200,
                      margin: EdgeInsets.all(15),
                      child: Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3, color: Colors.deepPurple.shade300)),
                        child:
                        Card(
                            color: Colors.deepPurple.shade100,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text(
                                    "user ${index + 1}".tr,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),
                                  Text(
                                    '${phone[index]}',
                                    style: TextStyle(

                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),

                                  Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [

                                      Text(
                                        "${index + 1}:00 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),

                                      Text(
                                        " ---> ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        "${index + 1}:30 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),





                                    ],
                                  )
                                ],),
                            )
                        ),



                      ),
                    ),
                    onTap:(){} ,
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),

              child: ListView.builder(
                  itemCount: date.length,
                  itemBuilder: (context, index) =>InkWell(
                    child: Container(
                      color: Colors.deepPurple.shade200,
                      margin: EdgeInsets.all(15),
                      child: Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3, color: Colors.deepPurple.shade300)),
                        child:
                        Card(
                            color: Colors.deepPurple.shade100,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text(
                                    "user ${index + 1}".tr,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),
                                  Text(
                                    '${phone[index]}',
                                    style: TextStyle(

                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),

                                  Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [

                                      Text(
                                        "${index + 1}:00 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),

                                      Text(
                                        " ---> ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        "${index + 1}:30 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),





                                    ],
                                  )
                                ],),
                            )
                        ),



                      ),
                    ),
                    onTap:(){} ,
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),

              child: ListView.builder(
                  itemCount: date.length,
                  itemBuilder: (context, index) =>InkWell(
                    child: Container(
                      color: Colors.deepPurple.shade200,
                      margin: EdgeInsets.all(15),
                      child: Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3, color: Colors.deepPurple.shade300)),
                        child:
                        Card(
                            color: Colors.deepPurple.shade100,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text(
                                    "user ${index + 1}".tr,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),
                                  Text(
                                    '${phone[index]}',
                                    style: TextStyle(

                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),

                                  Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [

                                      Text(
                                        "${index + 1}:00 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),

                                      Text(
                                        " ---> ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        "${index + 1}:30 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),





                                    ],
                                  )
                                ],),
                            )
                        ),



                      ),
                    ),
                    onTap:(){} ,
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),

              child: ListView.builder(
                  itemCount: date.length,
                  itemBuilder: (context, index) =>InkWell(
                    child: Container(
                      color: Colors.deepPurple.shade200,
                      margin: EdgeInsets.all(15),
                      child: Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3, color: Colors.deepPurple.shade300)),
                        child:
                        Card(
                            color: Colors.deepPurple.shade100,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text(
                                    "user ${index + 1}".tr,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),
                                  Text(
                                    '${phone[index]}',
                                    style: TextStyle(

                                        color: Color.fromARGB(255, 170, 51, 91)),
                                  ),

                                  Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [

                                      Text(
                                        "${index + 1}:00 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),

                                      Text(
                                        " ---> ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        "${index + 1}:30 ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        " PM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),





                                    ],
                                  )
                                ],),
                            )
                        ),



                      ),
                    ),
                    onTap:(){} ,
                  )
              ),
            ),

          ])),
    );
  }
}
