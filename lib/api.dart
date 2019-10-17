import 'dart:convert' as prefix0;
import 'dart:developer';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:request_api_equeck/model/equeck_api.dart';
import 'package:request_api_equeck/model/properties.dart';

class ApiError {
  int statusCode;
  String message;
  ApiError({this.statusCode, this.message});
  ApiError.fromRequestError(DioError dioError) {
    this.statusCode =
        dioError.response == null ? -1 : dioError.response.statusCode;
    this.message = dioError.message;
  }
  @override
  String toString() {
    return '$statusCode - $message';
  }
}

class Api<T> {
  T data;
  ApiError error;
  Api(this.data, this.error);
  @override
  String toString() {
    if (data != null) {
      return data.toString();
    }
    return error.toString();
  }
}

class ListResponese<T> {
  List<T> listItem = [];
  List<T> item = [];

  ListResponese(Map<String, dynamic> json, String itemRoot,
      T Function(dynamic itemJson) itemConverter) {

      // debugger();
      var itemEqueck = json[itemRoot];


      if(itemEqueck is List){
         listItem = itemEqueck.map(itemConverter).toList();
      }

    // item = jsonItem.map((i) => itemConverter).toList();
    // item = listItem.map(itemConverter).toList();

    // if(jsonItems is Map){
    //   debugger();
    //   jsonItems = jsonItem.map(itemConverter).toList();
    //   debugger();
    // }
    // debugger(); // var jsonItems = jsonItem[itemsRoot];
    // listItem.map((i) {
    //   var childItem = i[itemRootTwo];
    //   item = childItem.map(itemConverter).toList;
    // });
    // debugger();
    // print('Lỗi');
    // if(jsonItems is Map){
    //   item = jsonItems['mag'].map(itemConverter).toList();
    // }
    // if(jsonItem['properties'] != null){
    //   debugger();
    //   properti = Properti.fromJson(jsonItem['properties']);
    //   print(properti);
    // }
  }
}
