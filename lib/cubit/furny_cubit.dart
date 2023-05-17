import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:furny/model/kartmodel.dart';
import 'package:furny/repoKart.dart';
import 'package:meta/meta.dart';

part 'furny_state.dart';

class FurnyCubit extends Cubit<FurnyState> {
  final kartRepo objkartrepo;
  FurnyCubit(FurnyState state, this.objkartrepo) : super(FurnyInitial());

  Future<void>addkart(Kart k)async{
  try{
    emit(FurnyLoading());
    objkartrepo.addKart(k);
    emit(FurnySuccess());
  }catch(e){
    emit(FurnyError());
  }

  }


}
