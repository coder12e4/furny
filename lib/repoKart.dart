import 'dart:convert';

import 'managers/sharedPref/sharedPrefference.dart';
import 'model/kartmodel.dart';

abstract class kartAb{
  Future<void>addKart(Kart k);
  Future<List<Kart>>viewKart();
  Future<List<Kart>>deleteKart(int index);
}

class kartRepo extends kartAb{

  late final SharedPreferencesManager? sharedPreferencesManager;

  @override
  Future<void> addKart(Kart k)async {

      List<String> carts = [];
        carts.add(jsonEncode(k));

      sharedPreferencesManager!.putStringList('savedProducts', carts);
    }

  @override
  Future<List<Kart>> deleteKart(int index) async{

    List<String>? carts = [];
    if (sharedPreferencesManager!.isKeyExists('savedProducts') ?? false) {
      carts = sharedPreferencesManager!.getStringList('savedProducts');
    }
    List<Kart> cartList = <Kart>[];
    carts?.forEach((element) {
      var data = jsonDecode(element);
      cartList.remove(index);
    });
    return cartList; }



  @override
  Future<List<Kart>> viewKart() async {
    List<String>? carts = [];
    if (sharedPreferencesManager!.isKeyExists('savedProducts') ?? false) {
      carts = sharedPreferencesManager!.getStringList('savedProducts');
    }
    List<Kart> cartList = <Kart>[];
    carts?.forEach((element) {
      var data = jsonDecode(element);
      cartList.add(Kart.fromJson(data));
    });
    return cartList;
}


  }

