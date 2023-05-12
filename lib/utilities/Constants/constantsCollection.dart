import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Constants {
  String bgcolor = "#EBE6D7";
  String txtcolor = "#645832";
  String dividColor = "#AE9D66";



  decor(
    BorderRadius borderRadius,
    Color color,
  ) {
    return BoxDecoration(
      borderRadius: borderRadius,
      color: color,
    );
  }

  boldstylewhite(double size) {
    return TextStyle(
        fontFamily: "bold", fontSize: size, color: HexColor("#FFFFFF"));
  }

  boldstyleblack(double size) {
    return TextStyle(
        fontFamily: "bold", fontSize: size, color: HexColor("#333333"));
  }

  semiboldstylewhite(double size) {
    return TextStyle(
        fontFamily: "Semibold", fontSize: size, color: HexColor("#FFFFFF"));
  }

  semiboldstyleblack(double size) {
    return TextStyle(
        fontFamily: "Semibold", fontSize: size, color: HexColor("#333333"));
  }

  semiboldstyleTxt(double size) {
    return TextStyle(
        fontFamily: "Semibold", fontSize: size, color: HexColor("#645832"));
  }

  semiboldstyleGreenText(double size) {
    return TextStyle(
        fontFamily: "Regular", fontSize: size, color: HexColor("#237A36"));
  }

  mediumtyleblack(double size) {
    return TextStyle(
        fontFamily: "Medium", fontSize: size, color: HexColor("#333333"));
  }

  mediumstylewhite(double size) {
    return TextStyle(
        fontFamily: "Medium", fontSize: size, color: HexColor("#FFFFFF"));
  }

  regulartyleblack(double size) {
    return TextStyle(
        fontFamily: "Regular", fontSize: size, color: HexColor("#333333"));
  }

  regularstylewhite(double size) {
    return TextStyle(
        fontFamily: "Regular", fontSize: size, color: HexColor("#FFFFFF"));
  }

  regularstylewhitebtn(double size) {
    return TextStyle(
        fontFamily: "Regular", fontSize: size, color: HexColor("#EBE6D7"));
  }

  regularstylegrey(double size) {
    return TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: "Regular",
        fontSize: size,
        color: HexColor("#A6A49D"));
  }

  regularstyleTxt(double size) {
    return TextStyle(
        fontFamily: "Regular", fontSize: size, color: HexColor("#645832"));
  }
  regularstyleCartxt(double size) {
    return TextStyle(
        fontFamily: "Regular", fontSize: size, color: HexColor("#AE9D66"));
  }

  containerOne(
    double height,
    double width,
    Widget childWid,
  ) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Colors.white),
      child: childWid,
    );
  }

  commonCliprrct(
    double radius,
    String image,
  ) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ));
  }

  Widget btmSheet()=>Container(
    color: Colors.yellow,
    padding: EdgeInsets.all(10),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("hello")
      ],
    ),
  );
}
