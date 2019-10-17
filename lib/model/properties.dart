import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
part 'properties.g.dart';

@JsonSerializable()
class Properti {
  double mag;
  String place;
  Properti({this.mag, this.place});

  factory Properti.fromJson(Map<String, dynamic> json) =>
      _$PropertiFromJson(json);
  toJSon() => _$PropertiToJson(this);
}
