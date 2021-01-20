import 'dart:async';
import 'dart:ffi';
import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:maytinh/Culur/hopLe.dart';
import 'package:maytinh/src/resoure/mayTinh.dart';
class tinhBloc{

  double _ketqua;
  StreamController _hienThiController=new StreamController();

  Stream get hienthi=>_hienThiController.stream;

void hienThi(String text){
   if(text==""){
    _hienThiController.sink.add("0");
  }
  else if(text!='='){
    _hienThiController.sink.add(text);
  }
if(text=="="){
  if(laygiatri.phepTinh=="/"){
double a=double.parse(laygiatri.b);
double b=double.parse(laygiatri.a);
_ketqua =a/b;
_hienThiController.sink.add(_ketqua);
      }
  else if(laygiatri.phepTinh=="x"){
      double a=double.parse(laygiatri.b);
      double b=double.parse(laygiatri.a);
      _ketqua =a*b;
      _hienThiController.sink.add(_ketqua);

  }
  else if(laygiatri.phepTinh=="-"){
    double a=double.parse(laygiatri.b);
    double b=double.parse(laygiatri.a);
    _ketqua =a-b;
    _hienThiController.sink.add(_ketqua);
  }
  else if(laygiatri.phepTinh=="+"){
    double a=double.parse(laygiatri.b);
    double b=double.parse(laygiatri.a);
    _ketqua =a+b;
    _hienThiController.sink.add(_ketqua);
  }
    }
  }
  void disploy(){
    _hienThiController.close();
  }

  double get ketqua => _ketqua;
}