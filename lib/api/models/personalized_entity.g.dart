// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalized_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalizedEntity _$PersonalizedEntityFromJson(Map<String, dynamic> json) {
  return PersonalizedEntity(
    json['hasTaste'] as bool,
    json['code'] as int,
    json['category'] as int,
    (json['result'] as List)
        ?.map((e) =>
            e == null ? null : Personalized.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PersonalizedEntityToJson(PersonalizedEntity instance) =>
    <String, dynamic>{
      'hasTaste': instance.hasTaste,
      'code': instance.code,
      'category': instance.category,
      'result': instance.result,
    };

Personalized _$PersonalizedFromJson(Map<String, dynamic> json) {
  return Personalized(
    json['id'] as int,
    json['type'] as int,
    json['name'] as String,
    json['copywriter'] as String,
    json['picUrl'] as String,
    json['canDislike'] as bool,
    json['playCount'] as int,
    json['trackCount'] as int,
    json['highQuality'] as bool,
    json['alg'] as String,
  );
}

Map<String, dynamic> _$PersonalizedToJson(Personalized instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'copywriter': instance.copywriter,
      'picUrl': instance.picUrl,
      'canDislike': instance.canDislike,
      'playCount': instance.playCount,
      'trackCount': instance.trackCount,
      'highQuality': instance.highQuality,
      'alg': instance.alg,
    };
