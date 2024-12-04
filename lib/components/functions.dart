import 'package:ask_me_app/components/evaluation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
bool med = false;
bool psy = false;
bool prof = false;
bool fami = false;
bool admin = false;
bool beh = false;

bool sat  = false;
bool  sun = false;
bool mon  = false;
bool tus  = false;
bool wen  = false;
bool  the = false;
bool  fri = false;


validEmail (String? text) {


  if (text == null ||
      text == '' ||
      text.isEmpty) {
    return 'Can\'t be empty';
  }
  if (text.length <12) {
    return 'Invalid email';


  }
  if (text.contains('@') == false ||
      text.contains('.') == false) {
    return 'Invalid email format';
  }
  return null;


}

validPassword(String? text) {
  if (text == null ||
      text == '' ||
      text.isEmpty) {
    return 'Can\'t be empty';
  }
  if (text.length < 6) {
    return 'too short';
  }

  return null;
}

validName(String? text) {
  if (text == null ||
      text == '' ||
      text.isEmpty) {
    return 'Can\'t be empty';
  }
  if (text.length < 3) {
    return 'too short';
  }

  return null;
}

validPhone(String? text) {
  if (text == null ||
      text == '' ||
      text.isEmpty) {
    return 'Can\'t be empty';
  }
  if (text.length < 9) {
    return 'Must be nine numbers';
  }
  if(!(text!.isEmpty) && !RegExp(r"^(\d+)*$").hasMatch(text)){
    return "Enter a valid phone number";
  }

  return null;
}

validdropdwon(String? text) {
  if (text == null ||
      text == '' ||
      text.isEmpty) {
    return 'Can\'t be empty';
  }
}

String get consol
{
  String str='';
  if(med ==true)str+='Medical Consultations';
  if( psy==true)str+='Psychological Consultations';
  if(prof ==true)str+='Professional Consultations';
  if(fami ==true)str+='Familial Consultations';
  if(admin ==true)str+='Administrative Consultations';
  if(beh ==true)str+='Behaviorism Consultations';
  else
  {
    str+='No One';
  }
  return str;
}

String get Days
{
  String str='';
  if(sat ==true)str+='Saturday';
  if(sun==true)str+='Sunday';
  if(mon ==true)str+='Monday';
  if(tus ==true)str+='Tuesday';
  if(wen ==true)str+='Wednesday';
  if(the ==true)str+='Thursday';
  if(fri ==true) {
    str+='Friday';
  } else
  {
    str+='No One';
  }
  return str;

}

void BuildAlertDialog(BuildContext context) {
  final AlertDialog alert = AlertDialog(
    title:  Text('not'.tr,
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    contentPadding: const EdgeInsets.all(12),
    content: SizedBox(
      height: 200,
      child: Column(
        children: [
          const Divider(),
           Text('ten_do'.tr,style: TextStyle(fontFamily: 'NanumMyeongjo',fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.lightBlue,
              child:  Text( 'close'.tr,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            SizedBox(width: 5,),
            MaterialButton(
              onPressed: () {

                Navigator.of(context).pop();
                BuildSnackBar(context);

              },
              color: Colors.lightBlue,
              child:  Text('ok'.tr,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
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
    barrierDismissible: false,
   // barrierColor: Colors.blueAccent.withOpacity(0.3),
  );
}
void BuildAlertDialogvaluation(BuildContext context) {
  final AlertDialog alert = AlertDialog(
    title:  Text('val'.tr,
        style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),
    contentPadding: const EdgeInsets.all(12),
    content: SizedBox(
      height: 200,
      child: Column(
        children: [
          const Divider(),
          const SizedBox(
            height: 50,
          ),
          Evaluation(),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                color: Colors.lightBlue,
                child:  Text( 'close'.tr,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              SizedBox(width: 5,),
              MaterialButton(
                onPressed: () {

                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  BuildSnackBar(context);

                },
                color: Colors.lightBlue,
                child:  Text('ok'.tr,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
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
}
void BuildSnackBar(BuildContext context) {
  final Sbar = SnackBar(

    content: Text('succ'.tr,textAlign: TextAlign.center),
   // backgroundColor: Colors.blue.shade400,
    duration: Duration(seconds: 3),
    padding: EdgeInsets.all(12),
   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
  ScaffoldMessenger.of(context).showSnackBar(Sbar);
}
void BuildSnackBarAdd(BuildContext context) {
  final Sbar = SnackBar(

    content: Text('add_av'.tr,
        style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
     backgroundColor: Colors.green.shade500,
    duration: Duration(seconds: 3),
    padding: EdgeInsets.all(12),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
  ScaffoldMessenger.of(context).showSnackBar(Sbar);
}
void BuildSnackBarRemove(BuildContext context) {
  final Sbar = SnackBar(

    content: Text( 'remove_av'.tr,
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center),
     backgroundColor: Colors.red.shade500,
    duration: Duration(seconds: 3),
    padding: EdgeInsets.all(12),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
  ScaffoldMessenger.of(context).showSnackBar(Sbar);
}





