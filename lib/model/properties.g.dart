// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properti _$PropertiFromJson(Map<String, dynamic> json) {
  return Properti(
    mag: (json['mag'] as num)?.toDouble(),
    place: json['place'] as String,
  );
}

Map<String, dynamic> _$PropertiToJson(Properti instance) => <String, dynamic>{
      'mag': instance.mag,
      'place': instance.place,
    };
