import 'dart:developer';

import 'package:json_annotation/json_annotation.dart';
import 'package:request_api_equeck/model/properties.dart';

part 'equeck_api.g.dart';

@JsonSerializable()
class Equeck {
  String type;
  Properti properties;
  String id;
  Equeck({this.type, this.properties, this.id});

  factory Equeck.fromJson(Map<String, dynamic> json) => _$EqueckFromJson(json);
  toJSon() => _$EqueckToJson(this);
}
