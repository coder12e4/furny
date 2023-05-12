import 'package:flutter/material.dart';
class txtOfFurn extends StatelessWidget {
  final String data;
  final TextStyle textstyle;
  const txtOfFurn({Key? key, required this.data, required this.textstyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        data,
    style: textstyle,
     textAlign: TextAlign.center,

     maxLines: 5,
     overflow: TextOverflow.ellipsis,
    );
  }
}
class txtOfFurnone extends StatelessWidget {
  final String data;
  final TextStyle textstyle;
  const txtOfFurnone({Key? key, required this.data, required this.textstyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        data,

    style: textstyle,
     textAlign: TextAlign.justify,
     maxLines: 5,
     overflow: TextOverflow.ellipsis,

    );
  }
}
