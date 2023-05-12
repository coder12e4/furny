
import 'package:flutter/material.dart';
import 'package:furny/utilities/Constants/constantsCollection.dart';
import 'package:furny/utilities/widgets/txtCommon.dart';
import 'package:hexcolor/hexcolor.dart';
class shopPage extends StatefulWidget {
  const shopPage({Key? key}) : super(key: key);

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        elevation: 0,
        backgroundColor: HexColor(Constants().bgcolor),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.search,color: Colors.black,),
        ),
        title: txtOfFurn(data: "Shop",textstyle:Constants().regulartyleblack(20) ,),
        centerTitle: true,
        actions: [

          IconButton(onPressed: (){}, icon:Icon(Icons.line_weight_sharp,color: Colors.black,)),
          SizedBox(
            width: 28,
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: HexColor("#EBE6D7"),
          fixedColor: HexColor("#645832"),
          unselectedItemColor: HexColor("#A6A49D"),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: HexColor("#645832"),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined,
                    color: HexColor("#645832")),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: HexColor("#645832")),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border, color: HexColor("#645832")),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined, color: HexColor("#645832")),
                label: "Account"),
          ],
        ),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: HexColor(Constants().bgcolor),
        padding: EdgeInsets.only(left: 24,right: 24),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    shrinkWrap: true,
                    childAspectRatio: (1 / 1.6),
                     scrollDirection: Axis.vertical,

                    children: List.generate(10, (index){
                      return Container(
                        height: 250,
                        width: 156,

                        decoration: BoxDecoration(
                            color: HexColor(Constants().bgcolor),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(14),topLeft: Radius.circular(14))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         Container(
                            height: 206,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Image.asset("assets/images/furnimgone.png",
                              fit: BoxFit.fill,
                              ),
                            ),
                          ),
                            SizedBox(
                              height: 10,
                            ),
                            txtOfFurn(data: "PAOLA WOOD CHAIR", textstyle: Constants().semiboldstyleblack(14)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.currency_rupee,color: HexColor(Constants().txtcolor),size: 12,),
                                  txtOfFurn(data: "4,699", textstyle: Constants().regularstyleTxt(12)),
                                  Spacer(),

                                  Icon(Icons.star,color: HexColor(Constants().txtcolor),size: 12,),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  txtOfFurnone(data: "4.9", textstyle:Constants().semiboldstyleTxt(12),),
                                ],
                              )

                          ],
                        ),
                      );
                    })



                )


              ],
            ),
          ],

        ),
      ),
    );
  }
}
