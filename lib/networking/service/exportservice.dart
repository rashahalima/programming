
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../modle/export_module.dart';
class PostApi{

  final String ApiUrl='https://jsonplaceholder.typicode.com/photos';

Future<Export>  getExportApi() async{
    final resposne = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts')) ;
    var jsondata = jsonDecode(resposne.body);
    if(resposne.statusCode == 200){
      Export export=Export.fromJson(jsondata);

      return export ;
    }else {
    print('Failed');
    }
throw Exception('error');
  }
}








