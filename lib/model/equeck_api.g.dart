// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equeck_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equeck _$EqueckFromJson(Map<String, dynamic> json) {
  // debugger();
  return Equeck(
    type: json['type'] as String,
    properties: json['properties'] == null
        ? null
        : Properti.fromJson(json['properties'] as Map<String, dynamic>),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$EqueckToJson(Equeck instance) => <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'id': instance.id,
    };
