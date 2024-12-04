

class Export {
  int id;
  String name;
  String phone;
  String address;
  String image;//??????type

  Export(
      {required this.id, required this.name, required this.phone, required this.address, required this.image});


  factory Export.fromJson(Map<String, dynamic> jsonData) {
    return Export(

        id: jsonData['id'],
        name: jsonData['name'],
        phone: jsonData['phone'],
        address: jsonData['address'],
        image: jsonData['image']
    );
  }

}

class Exports{

  final List<dynamic> Export_list;

  Exports({required this.Export_list});

  factory Exports.fromJson(Map<String, dynamic> jsonData) {
    return Exports(
      Export_list: jsonData['Export_list'],

    );
  }
}
























/*

import 'package:flutter/foundation.dart';
import 'dart:io';
class Export {

  final int id;
  final String name;
  final String phone;
  final String address;
  final File image;
  Export(
      this.image,
      {required this.id,
        required this.name,
        required this.phone,
        required this.address

      });

//هنا يجب أن نلتزم كما مكتوب بال back
  factory Export.fromJson(Map<String, dynamic> jsonData) {
    return Export(

      id: jsonData['id'],
      name: jsonData['title'],
      phone: jsonData['body'],
      address:  jsonData['body'],
      image:
    );
  }
}


class Posts{

  final List<dynamic> postlist;

  Posts({required this.postlist});

  factory Posts.fromJson(Map<String, dynamic> jsonData) {
    return Posts(
      postlist: jsonData['postlist'],

    );
  }
}*/
