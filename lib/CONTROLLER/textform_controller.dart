import 'dart:core';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart';


class TextController extends GetxController{
  String? name;
  String? phone;
  // String? address;
  ImageProvider? address;
  String? detail;
  double? koli ;
  double? madfoa ;
  double? baki ;

  final mycontroller1 = TextEditingController();
  final mycontroller2 = TextEditingController();
  final mycontroller3 = TextEditingController();
  final mycontroller4 = TextEditingController();
  final mycontroller5 = TextEditingController();
  final mycontroller6 = TextEditingController();
  final mycontroller7 = TextEditingController();
   DateTime dateTime = DateTime.now();


  getSum()
  {
      if(mycontroller1.text.isNotEmpty && mycontroller2.text.isNotEmpty)
      {
        koli = double.parse(mycontroller1.text);
        madfoa = double.parse(mycontroller2.text);
        baki = koli! - madfoa!;
        update();
      }

  }



  CollectionReference Agel = FirebaseFirestore.instance.collection('agel');
  addAgel()
  {
    Agel.add({
      'name': name,
      'phone': phone,
      'address': address,
      'date': dateTime.toString(),
      'detail': detail,
      'koli': koli,
      'madfoa': madfoa,
      'baki': baki,

    }).then((value) => print('print successfully')).catchError((error)=>print(error));
  }

   clearText() {
   mycontroller1.clear();
   mycontroller2.clear();
   mycontroller3.clear();
   mycontroller4.clear();
   mycontroller5.clear();
   mycontroller6.clear();
   mycontroller7.clear();


  }
}
class NakdiController extends GetxController {
  String? name;
  String? phone;
  String? address;
  String? detail;
  String? sum;
  DateTime dateTime = DateTime.now();


  final mycontroller1 = TextEditingController();
  final mycontroller2 = TextEditingController();
  final mycontroller3 = TextEditingController();
  final mycontroller4 = TextEditingController();
  final mycontroller5 = TextEditingController();
  final mycontroller6 = TextEditingController();

  clearText() {
    mycontroller1.clear();
    mycontroller2.clear();
    mycontroller3.clear();
    mycontroller4.clear();
    mycontroller5.clear();
    mycontroller6.clear();



  }


  CollectionReference Nakdi = FirebaseFirestore.instance.collection('nakdi');
  addNakdi()
  {
    Nakdi.add({
      'name': name,
      'phone': phone,
      'address': address,
      'date': dateTime.toString(),
      'detail': detail,
      'sum': sum,

    }).then((value) => print('print successfully')).catchError((error)=>print(error));
  }
}
class BoxController extends GetxController{
  String? price;
  String? detail;
  DateTime dateTime = DateTime.now();

  final mycontroller1 = TextEditingController();
  final mycontroller2 = TextEditingController();
  final mycontroller3 = TextEditingController();

  clearText() {
    mycontroller1.clear();
    mycontroller2.clear();
    mycontroller3.clear();



  }


  CollectionReference Box = FirebaseFirestore.instance.collection('box');
  addBox()
  {
    Box.add({

      'date': dateTime.toString(),
      'detail': detail,
      'price': price,


    }).then((value) => print('print successfully')).catchError((error)=>print(error));
  }



}
class MasrofController extends GetxController{
  DateTime dateTime = DateTime.now();
  String? name;
  String? detail;
  String? price;
  final mycontroller1 = TextEditingController();
  final mycontroller2 = TextEditingController();
  final mycontroller3 = TextEditingController();
  final mycontroller4 = TextEditingController();

  clearText() {
    mycontroller1.clear();
    mycontroller2.clear();
    mycontroller3.clear();
    mycontroller4.clear();



  }


  CollectionReference Masrof = FirebaseFirestore.instance.collection('masrof');
  addMasrof()
  {
    Masrof.add({
      'name': name,
      'date': dateTime.toString(),
      'detail': detail,
      'price': price,


    }).then((value) => print('print successfully')).catchError((error)=>print(error));
  }



}
class MontagController extends GetxController{

  DateTime dateTime = DateTime.now();
  String? name;
  double? kemya;
  String? detail;
  double? price;
  double? sum;

  final mycontroller1 = TextEditingController();
  final mycontroller2 = TextEditingController();
  final mycontroller3 = TextEditingController();
  final mycontroller4 = TextEditingController();
  final mycontroller5 = TextEditingController();

  clearText() {
    mycontroller1.clear();
    mycontroller2.clear();
    mycontroller3.clear();
    mycontroller4.clear();
    mycontroller5.clear();



  }
  getSum()
  {
    if(mycontroller1.text.isNotEmpty && mycontroller2.text.isNotEmpty)
    {
      kemya = double.parse(mycontroller1.text) ;
      price = double.parse(mycontroller2.text) ;
      sum = kemya! * price!;
      update();


    }

  }


  CollectionReference Montag = FirebaseFirestore.instance.collection('montag');
  addMontag()
  {
    Montag.add({
      'name': name,
      'date': dateTime.toString(),
      'detail': detail,
      'kemya': kemya,
      'sum': sum,
      'price': price,

    }).then((value) => print('print successfully')).catchError((error)=>print(error));
  }



}





















class MontagTaqController extends GetxController{
  List montag = [];
  CollectionReference Montag = FirebaseFirestore.instance.collection('montag');
  getData()async
  {
    var responseBody = await Montag.get();
    responseBody.docs.forEach((element) {
      montag.add(element.data());
      update();
      print(montag);
    });

  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class NakdiTaqController extends GetxController{
  List nakdi = [];
  CollectionReference Nakdi = FirebaseFirestore.instance.collection('nakdi');
  getData()async
  {
    var responseBody = await Nakdi.get();
    responseBody.docs.forEach((element) {
      nakdi.add(element.data());
      update();
      print(nakdi);
    });

  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class AgelTaqController extends GetxController{
  List agel = [];
  CollectionReference Agel = FirebaseFirestore.instance.collection('agel');
  getData()async
  {
    var responseBody = await Agel.get();
    responseBody.docs.forEach((element) {
      agel.add(element.data());
      update();
      print(agel);
    });

  }



  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class MasrofTaqController extends GetxController{
  List masrof = [];
  CollectionReference Masrof = FirebaseFirestore.instance.collection('masrof');
  getData()async
  {
    var responseBody = await Masrof.get();
    responseBody.docs.forEach((element) {
      masrof.add(element.data());
      update();
      print(masrof);
    });

  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class BoxTaqController extends GetxController{
  List box = [];
  CollectionReference Box = FirebaseFirestore.instance.collection('box');
  getData()async
  {
    var responseBody = await Box.get();
    responseBody.docs.forEach((element) {
      box.add(element.data());
      update();
      print(box);
    });

  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}