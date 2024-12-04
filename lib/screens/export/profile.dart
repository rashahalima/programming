import 'package:ask_me_app/components/mytextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import'package:image_picker/image_picker.dart';
import '../../components/functions.dart';

class Profile extends StatefulWidget {
 final name;
 final id;
 final experiences;
 final phone;
 final detalis;
 final address;


  const Profile({Key? key, this.name, this.id, this.experiences, this.phone, this.address, this.detalis}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? image;
  final PickedFile = ImagePicker();

  uploadImage() async {
    var pickedImage = await ImagePicker().getImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {}
  }

  uploadImagee() async {
    var pickedImage = await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {}
  }

  TextEditingController Name = TextEditingController();
  TextEditingController Experiences = TextEditingController();
  TextEditingController Detalis = TextEditingController();
  TextEditingController Phone = TextEditingController();
  TextEditingController Address = TextEditingController();

  var _time1;
  var _time2;




  void timepicker1() {
   showTimePicker(context: context,
       initialTime:TimeOfDay.now() ).then((value) {
         if(value==null)
           {return;}
         else
           {
             setState(() {
               _time1=value;
             });
           }
    });
  }
  void timepicker2() {
    showTimePicker(context: context,
        initialTime:TimeOfDay.now() ).then((value) {
      if(value==null)
      {return;}
      else
      {
        setState(() {
          _time2=value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('prof'.tr), backgroundColor: Colors.blueAccent.shade100,),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 150,
                          child: ClipOval(
                            child: image == null
                                ? Column(
                              children: [
                                InkWell(
                                    child:
                                    Image.asset("images/person.png")),
                              ],
                            )
                                : InkWell(
                                child: Image.file(
                                  image!,
                                )),
                          ),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.blue)),
                                    height: 140,
                                    padding: EdgeInsets.all(30),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(child: Container()),
                                        Column(children: [
                                          IconButton(
                                            onPressed: uploadImage,
                                            icon: Icon(
                                              Icons.camera_alt,
                                            ),
                                            color: Colors.blue,
                                            iconSize: 28,
                                          ),
                                          InkWell(
                                              onTap: uploadImage,
                                              child: Text(
                                                " camera",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                        ]),
                                        Expanded(child: Container()),
                                        Expanded(child: Container()),
                                        Expanded(child: Container()),
                                        Column(children: [
                                          IconButton(
                                            onPressed: uploadImagee,
                                            icon: Icon(Icons.photo_album),
                                            color: Colors.blue,
                                            iconSize: 28,
                                          ),
                                          InkWell(
                                              onTap: uploadImagee,
                                              child: Text(
                                                " gallery",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              )),
                                        ]),
                                        Expanded(child: Container()),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Card(
                            margin: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 2,
                                                      color: Colors.blue)),
                                              height: 140,
                                              padding: EdgeInsets.all(30),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(child: Container()),
                                                  Column(children: [
                                                    IconButton(
                                                      onPressed: uploadImage,
                                                      icon: Icon(
                                                        Icons.camera_alt,
                                                      ),
                                                      color: Colors.blue,
                                                      iconSize: 28,
                                                    ),
                                                    InkWell(
                                                        onTap: uploadImage,
                                                        child: Text(
                                                          " camera",
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight.bold,
                                                              fontSize: 20),
                                                        )),
                                                  ]),
                                                  Expanded(child: Container()),
                                                  Expanded(child: Container()),
                                                  Expanded(child: Container()),
                                                  Column(children: [
                                                    IconButton(
                                                      onPressed: uploadImagee,
                                                      icon:
                                                      Icon(Icons.photo_album),
                                                      color: Colors.blue,
                                                      iconSize: 28,
                                                    ),
                                                    InkWell(
                                                        onTap: uploadImagee,
                                                        child: Text(
                                                          " gallery",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        )),
                                                  ]),
                                                  Expanded(child: Container()),
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    icon: Icon(Icons.cameraswitch_outlined)),
                                Text(
                                  "تعيين صورة للملف الشخصي",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'per_inf'.tr,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.bold),
                      ),
                      MyTextFormField(
                        textInputType: TextInputType.name,
                        Mycontroller: Name,
                        obscureText: false,
                        label: Text('nam'.tr, style: TextStyle(fontSize: 15)),
                      ),
                      MyTextFormField(
                        textInputType: TextInputType.text,
                        Mycontroller: Experiences,
                        maxline: 4,
                        obscureText: false,
                        label: Text('exper'.tr, style: TextStyle(fontSize: 15)),
                      ),
                      MyTextFormField(
                        textInputType: TextInputType.text,
                        Mycontroller: Detalis,
                        maxline: 6,
                        obscureText: false,
                        label: Text('det'.tr, style: TextStyle(fontSize: 15)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'con_inf'.tr,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.bold),
                      ),
                      MyTextFormField(
                        textInputType: TextInputType.phone,
                        Mycontroller: Phone,
                        obscureText: false,
                        label: Text('phon'.tr, style: TextStyle(fontSize: 15)),
                      ),
                      MyTextFormField(
                        textInputType: TextInputType.text,
                        Mycontroller: Address,
                        obscureText: false,
                        label: Text('add'.tr, style: TextStyle(fontSize: 15)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'type_con'.tr,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.bold),
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.only(top: 12, left: 10),
                        title: Text('med'.tr),
                        value: med,
                        onChanged: (val) {
                          setState(() {
                            med = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.only(top: 12, left: 10),
                        title: Text('psy'.tr),
                        value: psy,
                        onChanged: (val) {
                          setState(() {
                            psy = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.only(top: 12, left: 10),
                        title: Text("profess".tr),
                        value: prof,
                        onChanged: (val) {
                          setState(() {
                            prof = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.only(top: 12, left: 10),
                        title: Text("fam".tr),
                        value: fami,
                        onChanged: (val) {
                          setState(() {
                            fami = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.only(top: 12, left: 10),
                        title: Text("adm".tr),
                        value: admin,
                        onChanged: (val) {
                          setState(() {
                            admin = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.only(top: 12, left: 10),
                        title: Text("beh".tr),
                        value: beh,
                        onChanged: (val) {
                          setState(() {
                            beh = val!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'avday'.tr,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.bold),
                      ),
                      CheckboxListTile(
                        title: Text('sat'.tr),
                        value: sat,
                        onChanged: (val) {
                          setState(() {
                            sat = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('sun'.tr),
                        value: sun,
                        onChanged: (val) {
                          setState(() {
                            sun = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('mon'.tr),
                        value: mon,
                        onChanged: (val) {
                          setState(() {
                            mon = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('tues'.tr),
                        value: tus,
                        onChanged: (val) {
                          setState(() {
                            tus = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('wed'.tr),
                        value: wen,
                        onChanged: (val) {
                          setState(() {
                            wen = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('thu'.tr),
                        value: the,
                        onChanged: (val) {
                          setState(() {
                            the = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('fri'.tr),
                        value: fri,
                        onChanged: (val) {
                          setState(() {
                            fri = val!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'avtime'.tr,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.bold),
                      ),
                      Row(children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                            onTap: timepicker1,
                            child: const Icon(Icons.access_time,
                                size: 30, color: Colors.lightBlueAccent),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('from_ho'.tr,
                            style: TextStyle(color: Colors.blueAccent)),
                        Text('$_time1')
                      ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                            onTap: timepicker2,
                            child: const Icon(Icons.access_time,
                                size: 30, color: Colors.lightBlueAccent),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('to_ho'.tr,
                            style: TextStyle(color: Colors.blueAccent)),
                        Text('$_time2')
                      ]),
                      Container(
                        padding: EdgeInsets.all(12),
                        width: double.infinity,
                        child: MaterialButton(
                            onPressed: () {},
                            color: Colors.lightBlueAccent.withOpacity(0.8),
                            child: Text('save'.tr,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                      ),
                    ],
                  ),
                ))),
    );

  }


}
