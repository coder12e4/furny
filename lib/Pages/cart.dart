

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furny/utilities/Constants/constantsCollection.dart';
import 'package:furny/utilities/widgets/btnCommon.dart';
import 'package:furny/utilities/widgets/txtCommon.dart';
import 'package:hexcolor/hexcolor.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        elevation: 0,
        backgroundColor: HexColor(Constants().bgcolor),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: txtOfFurn(data: "Cart",textstyle:Constants().regulartyleblack(20) ,),
        centerTitle: true,

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Stack(
          children: [
             Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               color: HexColor(Constants().bgcolor),
               padding: EdgeInsets.only(left: 24,right: 23),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Checkbox(value: this.value, onChanged: (bool? value){
                        setState(() {
                          this.value = value!;
                        });
                      },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),),
                      SizedBox(
                        width: 16,
                      ),
                      txtOfFurn(data: "Select all", textstyle: Constants().regulartyleblack(16)),
                      Spacer(),
                      txtOfFurn(data: "Clear", textstyle: Constants(). regularstyleCartxt(16)),

                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context,int){
                          return Container(
                            height: 120,
                            color:HexColor(Constants().bgcolor),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(value: this.value, onChanged: (bool? value){
                                  setState(() {
                                    this.value = value!;
                                  });
                                },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),),

                                ClipRRect(borderRadius: BorderRadius.circular(12),
                                  child: Image(
                                      height: 80,
                                      width: 80,
                                      image: AssetImage("assets/images/furnimgone.png")),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    txtOfFurn(data: "PAOLA WOOD CHAIR", textstyle: Constants().regulartyleblack(16)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.currency_rupee,color: HexColor(Constants().txtcolor),size: 12,),
                                        txtOfFurn(data: "4,699", textstyle: Constants().regularstyleTxt(12)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        txtOfFurn(data: "Oak Wood, L", textstyle: Constants().regularstyleCartxt(12)),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          height: 32,
                                          width: 32,

                                          decoration: BoxDecoration(
                                              color: HexColor(Constants().bgcolor),
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft: Radius.circular(4)),
                                              border: Border.all(color: HexColor(Constants().txtcolor),width: 2)
                                          ),

                                        ),
                                        Container(
                                          height: 32,
                                          width: 48,
                                          decoration: BoxDecoration(
                                              color: Colors.white,

                                              border: Border.all(color: HexColor(Constants().txtcolor),width: 2)
                                          ),
                                        ),
                                        Container(
                                          height: 32,
                                          width: 32,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: HexColor(Constants().bgcolor),
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(4),bottomRight: Radius.circular(4)),
                                              border: Border.all(color: HexColor(Constants().txtcolor),width: 2)
                                          ),


                                        ),

                                      ],
                                    )
                                  ],
                                ),


                              ],
                            ),
                          );
                        }),
                  )
                ],
            ),
             ),
            
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Card(
                elevation: 10,

                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  color: HexColor(Constants().bgcolor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          txtOfFurn(data: "Total", textstyle: Constants().regularstyleCartxt(14)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.currency_rupee,color: HexColor(Constants().txtcolor),size: 18,),
                              txtOfFurn(data: "15,000", textstyle: Constants().regularstyleTxt(20)),
                            ],
                          ),
                        ],
                      ),
                      btnOfFun(function: (){}, height: 42, width: 162, childWid:txtOfFurn(data: "Checkout",textstyle: Constants(). regularstylewhitebtn(17),))

                    ],
                  ),
                ),
                
              ),
            )
          ],

        ),
      ),
    );
  }
}
