import 'package:flutter/material.dart';
import 'package:furny/Pages/productView.dart';
import 'package:furny/utilities/Constants/constantsCollection.dart';
import 'package:furny/utilities/widgets/btnCommon.dart';
import 'package:furny/utilities/widgets/txtCommon.dart';
import 'package:hexcolor/hexcolor.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        color: HexColor("#EBE6D7"),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: HexColor("#EBE6D7"),
              padding: EdgeInsets.only(left: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      txtOfFurn(
                          data: "FEATURE ITEMS",
                          textstyle: Constants().mediumtyleblack(16)),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                          itemBuilder: (context,int){
                          return Constants().containerOne(
                            156,
                            206,
                            ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: Image.asset("assets/images/furnimgone.png",
                                  fit: BoxFit.fill,
                                )),
                          );
                          }
                          )
                  )

                ],
              ),

            ),
            Container(
              height: MediaQuery.of(context).size.height * .570,
              width: MediaQuery.of(context).size.width,
              decoration: Constants().decor(
                  BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28)),
                  Colors.grey),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28)),
                child: Image.asset(
                  "assets/images/furnhome.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 66,
                left: 24,
                child: txtOfFurn(
                    data: "Furny", textstyle: Constants().boldstyleblack(32))),
            Positioned(
                top: 65,
                right: 83,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_rounded))),
            Positioned(
                top: 64,
                right: 26.4,
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))),
            Positioned(
                top: 135,
                left: 30,
                right: 30,
                child: Container(
                    height: 300,
                    width: 344,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: txtOfFurn(
                        data: "Seamless Furniture With Natural Fabrics",
                        textstyle: Constants().regularstylewhite(48)))),
            Positioned(
                top: 450,
                left: 100,
                right: 100,
                child: btnOfFun(
                    function: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>productView()));

                    },
                    height: 42,
                    width: 161,
                    childWid: txtOfFurn(
                      data: "Shop All",
                      textstyle: Constants().regularstylewhitebtn(17),
                    ))),


          ],
        ),
      ),
    );
  }
}
