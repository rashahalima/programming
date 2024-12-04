import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Evaluation extends StatelessWidget {
  final double ?itemsize;

  const Evaluation({Key? key, this.itemsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        itemSize: 30,
        initialRating: 1,
        unratedColor:Colors.grey ,
        minRating: 1 ,
        allowHalfRating: true,
        itemCount:5 ,
        itemBuilder: (_,i){
          return Icon(Icons.star_sharp,color: Colors.amber,);
        },
        onRatingUpdate: (value){
          print('$value');
        });
  }
}
