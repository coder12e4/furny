

import 'dart:convert';

import 'package:furny/model/loginmodel.dart';
import 'package:http/http.dart' as http;

abstract class loginRepo{
  Future<login>loginToaccount(String username, String password);

}
class loginTo extends loginRepo{
  @override
  Future<login>loginToaccount(String username, String password)async{
    login? objlogin;
        var response =await http.post(Uri.parse("https://mocki.io/v1/ca00eccf-0d3d-4c4f-bd65-0b2414861ea5"),
        body: {
          "username":username,
          "password":password,
        }
        );
        if(response.statusCode==200){
          print(response.body);
          var data = jsonDecode(response.body);
          objlogin=login.fromJson(data);
        }else{
          print("error");
        }
      return objlogin!;



  }
}