import 'package:flutter/material.dart';
import 'package:furny/Pages/cart.dart';
import 'package:furny/Pages/productDetail.dart';
import 'package:furny/cubit/furny_cubit.dart';
import 'package:furny/model/kartmodel.dart';
import 'package:furny/repoKart.dart';
import 'package:furny/utilities/Constants/constantsCollection.dart';
import 'package:furny/utilities/widgets/btnCommon.dart';
import 'package:furny/utilities/widgets/txtCommon.dart';
import 'package:hexcolor/hexcolor.dart';

class productView extends StatefulWidget {

  final List<Kart>? kartlist;

  const productView({Key? key, this.kartlist}) : super(key: key);

  @override
  State<productView> createState() => _productViewState();
}

class _productViewState extends State<productView> {
  late FurnyCubit objfurnycubit;
  List<Kart>? kartlist = [];

  @override
  void initState() {
    objfurnycubit = FurnyCubit(FurnyInitial(), kartRepo());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 78,
          elevation: 0,
          backgroundColor: HexColor(Constants().bgcolor),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                )),
            SizedBox(
              width: 45,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                )),
            SizedBox(
              width: 26,
            ),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: HexColor(Constants().bgcolor),
          padding: EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, int) {
                            return Container(
                              height: 400,
                              margin: EdgeInsets.only(right: 10),
                              decoration: Constants().decor(
                                  BorderRadius.circular(28),
                                  Colors.transparent),
                              child: Constants().commonCliprrct(
                                  28, "assets/images/furnimgtwo.png"),
                            );
                          })),
                  SizedBox(
                    height: 51,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      txtOfFurn(
                          data: "ONYX WOOD CHAIR",
                          textstyle: Constants().semiboldstyleblack(20)),
                      SizedBox(
                        width: 24,
                      ),
                      Icon(
                        Icons.currency_rupee,
                        color: HexColor(Constants().txtcolor),
                        size: 18,
                      ),
                      txtOfFurn(
                          data: "4,699",
                          textstyle: Constants().regularstyleTxt(20)),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      txtOfFurn(
                          data: "ON-CHAIR",
                          textstyle: Constants().semiboldstyleTxt(12)),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 340,
                          child: txtOfFurnone(
                            data:
                                "Refinement Chair with Ripped Seat, made of retro Eucalyptus wood, of great resistance, Kiln dried, made with a spike system and painted with P.U. (Polyurethane)",
                            textstyle: Constants().regularstyleTxt(12),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      txtOfFurnone(
                        data: "Shipping",
                        textstyle: Constants().semiboldstyleTxt(12),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      txtOfFurnone(
                        data: "Free",
                        textstyle: Constants().semiboldstyleGreenText(12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      txtOfFurnone(
                        data: "Ratings",
                        textstyle: Constants().semiboldstyleTxt(12),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: HexColor(Constants().txtcolor),
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      txtOfFurnone(
                        data: "4.9",
                        textstyle: Constants().semiboldstyleTxt(12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      txtOfFurnone(
                        data: "(82 reviews)",
                        textstyle: Constants().semiboldstyleTxt(12),
                      ),
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
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      txtOfFurnone(
                        data: "Height",
                        textstyle: Constants().semiboldstyleTxt(16),
                      ),
                      txtOfFurnone(
                        data: "100 Cm",
                        textstyle: Constants().regularstyleTxt(16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: HexColor(Constants().dividColor),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      txtOfFurnone(
                        data: "Width",
                        textstyle: Constants().semiboldstyleTxt(16),
                      ),
                      txtOfFurnone(
                        data: "42 Cm",
                        textstyle: Constants().regularstyleTxt(16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: HexColor(Constants().dividColor),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      txtOfFurnone(
                        data: "Weight",
                        textstyle: Constants().semiboldstyleTxt(16),
                      ),
                      txtOfFurnone(
                        data: "12 Kg",
                        textstyle: Constants().regularstyleTxt(16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: HexColor(Constants().dividColor),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Divider(
                    height: 1,
                    thickness: 2,
                    color: HexColor(Constants().txtcolor),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      txtOfFurn(
                          data: "RELATED PRODUCTS",
                          textstyle: Constants().mediumtyleblack(16)),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  SizedBox(
                      height: 220,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, int) {
                            return Constants().containerOne(
                              156,
                              206,
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(
                                    "assets/images/furnimgone.png",
                                    fit: BoxFit.fill,
                                  )),
                            );
                          })),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      btnOfFun(
                          function: () {
                            objfurnycubit.addkart(Kart(
                                title: "chair",
                                price: "4999.99",
                                subHeading: "dfsdf",
                                discription: "dhhnf",
                              image: "sda",
                              h: "45",
                              b: "45",
                              w:"98"
                            ));


                            Navigator.push(context, MaterialPageRoute(builder: (context)=>cart(kartlist: kartlist,)));
                          },
                          height: 42,
                          width: 164,
                          childWid: txtOfFurn(
                            data: "Add to cart",
                            textstyle: Constants().regularstylewhitebtn(17),
                          )),
                      btnOfFunTwo(
                          function: () {},
                          height: 42,
                          width: 164,
                          childWid: txtOfFurn(
                            data: "Buy it now",
                            textstyle: Constants().regularstyleTxt(17),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
