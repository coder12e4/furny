import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class btnOfFun extends StatelessWidget {
  final Function function;
  final double height;
  final double width;
  final Widget childWid;
  const btnOfFun({Key? key, required this.function, required this.height, required this.width, required this.childWid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),color: HexColor("#645832")
        ),
        child: childWid,
      ),
    );
  }
}
class btnOfFunTwo extends StatelessWidget {
  final Function function;
  final double height;
  final double width;
  final Widget childWid;
  const btnOfFunTwo({Key? key, required this.function, required this.height, required this.width, required this.childWid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),color: HexColor("#EBE6D7"),
          border: Border.all(color: HexColor("#645832"))
        ),
        child: childWid,
      ),
    );
  }
}
