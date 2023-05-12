

import 'package:flutter/material.dart';
import 'package:furny/Pages/cart.dart';
import 'package:furny/Pages/shopPage.dart';
import 'package:furny/utilities/Constants/constantsCollection.dart';
import 'package:furny/utilities/widgets/btnCommon.dart';
import 'package:furny/utilities/widgets/txtCommon.dart';
import 'package:hexcolor/hexcolor.dart';

class productDetail extends StatefulWidget {
  const productDetail({Key? key}) : super(key: key);

  @override
  State<productDetail> createState() => _productDetailState();
}

class _productDetailState extends State<productDetail> {
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
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.bookmark_border,color: Colors.black,)),
          IconButton(onPressed: (){}, icon:Icon(Icons.shopping_bag_outlined,color: Colors.black,)),

        ],
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: HexColor(Constants().bgcolor),
        padding: EdgeInsets.only(left: 24,right: 24),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 400,
                width: MediaQuery.of(context).size.width,

                child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,int){
                      return  Container(
                        height: 400,
                        margin: EdgeInsets.only(right: 10),
                        decoration: Constants().decor(BorderRadius.circular(28), Colors.transparent),
                        child: Constants().commonCliprrct(28,"assets/images/furnimgtwo.png"),
                      );
                    })
            ),
            SizedBox(
              height: 51,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                txtOfFurn(data: "ONYX WOOD CHAIR", textstyle: Constants().semiboldstyleblack(20)),
                SizedBox(
                  width: 75,
                ),
                Icon(Icons.currency_rupee,color: HexColor(Constants().txtcolor),size: 18,),
                txtOfFurn(data: "4,699", textstyle: Constants().regularstyleTxt(20)),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [

                txtOfFurn(data: "ON-CHAIR", textstyle:Constants().semiboldstyleTxt(12)),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(
                    width: 340,
                    child: txtOfFurnone(data: "Refinement Chair with Ripped Seat, made of retro Eucalyptus wood, of great resistance, Kiln dried, made with a spike system and painted with P.U. (Polyurethane)", textstyle:Constants().regularstyleTxt(12),)),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [

                txtOfFurnone(data: "Shipping", textstyle:Constants().semiboldstyleTxt(12),),
                SizedBox(
                  width: 14,
                ),
                txtOfFurnone(data: "Free", textstyle:Constants().semiboldstyleGreenText(12),),
              ],
            ),
            SizedBox(
              height: 8,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [

                txtOfFurnone(data: "Ratings", textstyle:Constants().semiboldstyleTxt(12),),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.star,color: HexColor(Constants().txtcolor),size: 16,),
                SizedBox(
                  width: 5,
                ),
                txtOfFurnone(data: "4.9", textstyle:Constants().semiboldstyleTxt(12),),
                SizedBox(
                  width: 5,
                ),
                txtOfFurnone(data: "(82 reviews)", textstyle:Constants().semiboldstyleTxt(12),),
              ],
            ),
            SizedBox(
              height: 14,
            ),

            Divider(
              height: 1,
              thickness: 2,
              color: HexColor(Constants().txtcolor),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btnOfFun(function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
                }, height: 42, width: 164, childWid:txtOfFurn(
                  data: "Add to cart",
                  textstyle: Constants().regularstylewhitebtn(17),
                ) ),

                btnOfFunTwo(function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>shopPage()));
                }, height: 42, width: 164, childWid:txtOfFurn(
                  data: "Buy it now",
                  textstyle: Constants().regularstyleTxt(17),
                ) ),

              ],
            ),
            SizedBox(
              height: 20,
            ),


          ],
        ),
      ),

    );
  }
}
