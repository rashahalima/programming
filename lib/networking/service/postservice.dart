import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../modle/post.dart';
class PostApi{

final String ApiUrl='https://jsonplaceholder.typicode.com/photos';


//Future <Post> FetchData()

  Future FetchData() async
  {

    Uri uri;
    uri = Uri.parse(ApiUrl);
    http.Response res  = await http.get(uri);
    if (res.statusCode == 200) {

      String Data =res.body;
      var jsondata = jsonDecode(Data);
      Post post=Post.fromJson(jsondata);

      return post;
    }
    else
      {
        throw Exception('error_statusCode=${res.statusCode}');

      }

  }
}