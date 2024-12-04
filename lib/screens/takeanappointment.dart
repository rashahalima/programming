
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/functions.dart';
import '../components/mytextformfield.dart';

class TakeAnAppointment extends StatefulWidget {
  const TakeAnAppointment({Key? key}) : super(key: key);

  @override
  State<TakeAnAppointment> createState() => _TakeAnAppointmentState();
}

class _TakeAnAppointmentState extends State<TakeAnAppointment> {

  var days;
  var time;
  var current;
  TextEditingController Name = TextEditingController();
  TextEditingController Phone = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('det _app'.tr),
          backgroundColor: Colors.blueAccent.shade100,),
        body: SingleChildScrollView(
            child: Container(
    padding: EdgeInsets.all(12),
    child: Center(
      child: Form(
       
        key: _formkey,
        child: Column(
        children: [
          Container(
          //  alignment: Alignment.topLeft,
            child: Text('enter n'.tr, style: TextStyle(fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold),),
          ),
          MyTextFormField(
            valid:  (text) {
              return validName(text!);
            },
            textInputType: TextInputType.name,
            Mycontroller: Name,
            obscureText: false,
            label: Text('nam'.tr, style: TextStyle(fontSize: 15)),),


          Container(
           // alignment: Alignment.topLeft,
            child: Text('enter ph'.tr, style: TextStyle(fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold),),
          ),
          MyTextFormField(
            valid:  (text) {
              return validPhone(text!);
            },
            textInputType: TextInputType.phone,
            Mycontroller: Phone,
            obscureText: false,
            label: Text('phon'.tr, style: TextStyle(fontSize: 15)),),
          const SizedBox(height: 10,),
          Container(
           // alignment: Alignment.topLeft,
            child:    Text('day'.tr, style: TextStyle(fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold),),
          ),



        /*    RadioListTile(

              title: Text('sun'.tr),
              value:'sun',
              groupValue: days,
              onChanged: (val){
                setState(() {

                  days=val;
                });
              }),
            RadioListTile(
                controlAffinity: ListTileControlAffinity.platform,
                title: Text('fri'.tr),
                value:'fri',
                groupValue: days,
                onChanged: (val){
                  setState(() {
                    days=val;
                  });
                }),
            RadioListTile(
                title: Text('sat'.tr),
                value:'sat',
                groupValue: days,
                onChanged: (val){
                  setState(() {
                    days=val;
                  });
                }),*/




  buildChose_radio('sun'.tr),
  buildChose_radio('fri'.tr),
  buildChose_radio('mon'.tr),


         SizedBox(height: 10,),
          Container(
          //  alignment: Alignment.topLeft,
            child: Text('time'.tr,style: TextStyle(fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold),),
          ),

          RadioListTile(
              title: Text(' 1:30 --> 2:00'),
              value:'1',
              groupValue: time,
              onChanged: (val){
                setState(() {
                  time=val;
                });
              }),
          RadioListTile(
              title: Text(' 2:00 --> 3:00'),
              value:'2',
              groupValue: time,
              onChanged: (val){
                setState(() {
                  time=val;
                });
              }),
          RadioListTile(
              title: Text(' 3:00 --> 3:30'),
              value:'3',
              groupValue: time,
              onChanged: (val){
                setState(() {
                  time=val;
                });
              }),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: MaterialButton(
                onPressed: () {
                  if(_formkey.currentState!.validate()) {
                    BuildAlertDialog(context);
                  }
                },
                color: Colors.lightBlueAccent.withOpacity(0.8),
                child:  Text('send'.tr,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20))),
          ),



        ],
      ),)

    )
    )),


    );
  }


  Row buildChose_radio(String value) {
    return Row(
      children: [
        Radio(
            value: value,
            groupValue: days,
            onChanged: (val) {
              setState(() {
                days = val;
              });
            }),
        Text('$value', style: TextStyle(fontSize: 18)),

        // AnswerDialog(),
      ],
    );
  }
}
