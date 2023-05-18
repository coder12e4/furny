import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furny/Pages/homePage.dart';
import 'package:furny/cubit/login/login_cubit.dart';
import 'package:furny/model/loginmodel.dart';
import 'package:furny/repository/loginrepository.dart';
import 'package:furny/utilities/Constants/constantsCollection.dart';
import 'package:furny/utilities/widgets/txtCommon.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:page_transition/page_transition.dart';

class newlogin extends StatefulWidget {
  const newlogin({Key? key}) : super(key: key);

  @override
  State<newlogin> createState() => _newloginState();
}

class _newloginState extends State<newlogin> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  late LoginCubit objlogincubit;
  @override
  void initState() {
    objlogincubit = LoginCubit(LoginInitial(), loginTo());
    // TODO: implement initState
    super.initState();
  }

  String username_ = "";
  String password_ = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 100, left: 30, right: 30),
        color: HexColor(Constants().bgcolor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txtOfFurn(
                    data: "Furny", textstyle: Constants().boldstyleblack(40))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txtOfFurnone(
                    data: "We'll furnish your dreams.",
                    textstyle: Constants().regulartyleblack(20))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            /* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txtOfFurnone(data: "Welcome back you've been missed!", textstyle:Constants().regulartyleblack(30))
              ],
            ),*/
            SizedBox(
              height: 40,
            ),
            TextField(
                textAlign: TextAlign.start,
                controller: username,
                decoration: InputDecoration(
                    hintText: "Enter username",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: HexColor(Constants().dividColor)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: HexColor(Constants().dividColor), width: 1),
                        borderRadius: BorderRadius.circular(20)))),
            SizedBox(
              height: 16,
            ),
            TextField(
                textAlign: TextAlign.start,
                controller: password,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: HexColor(Constants().dividColor)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: HexColor(Constants().dividColor), width: 1),
                        borderRadius: BorderRadius.circular(20)))),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Recovery Password",
                      style: TextStyle(
                          letterSpacing: .2,
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                objlogincubit.loginFun("amal", "amal@123");

              },
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor("#645832"),
                ),
                child: BlocProvider<LoginCubit>(
                  create: (context) => objlogincubit,
                  child: BlocListener<LoginCubit, LoginState>(
                      listener: (context, state) {
                    if (state is LoginSuccess) {
                      login objnew = state.objlogin;
                      Constants().loadPages(homePage(objlogin: objnew), context);

                    }
                  },
                    child: BlocBuilder<LoginCubit,LoginState>(
                        builder: (context,state){
                          if (state is LoginLoading){
                            return Center(child: CircularProgressIndicator());
                          }else{
                            return Center(child: txtOfFurn(data:"LogIn", textstyle:Constants().boldstylewhite(24)));
                          }
                        }
                        ),

                  ),
                ),
              ),


            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "  Or Continue With ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                height: 60,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: (Offset(1.0, 4.5)),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ],
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
              Container(
                height: 70,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: (Offset(1.0, 4.5)),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ],
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 50,
                ),
              ),
              Container(
                height: 60,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: (Offset(1.0, 4.5)),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ],
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.red.shade900,
                  size: 40,
                ),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  " Register now",
                  style: TextStyle(color: HexColor("#645832")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

