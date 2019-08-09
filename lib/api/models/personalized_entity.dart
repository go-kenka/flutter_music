import 'package:json_annotation/json_annotation.dart';

part 'personalized_entity.g.dart';

@JsonSerializable()
class PersonalizedEntity extends Object {
  @JsonKey(name: 'hasTaste')
  bool hasTaste;

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'category')
  int category;

  @JsonKey(name: 'result')
  List<Personalized> result;

  PersonalizedEntity(
    this.hasTaste,
    this.code,
    this.category,
    this.result,
  );

  factory PersonalizedEntity.fromJson(Map<String, dynamic> srcJson) =>
      _$PersonalizedEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PersonalizedEntityToJson(this);
}

@JsonSerializable()
class Personalized extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'copywriter')
  String copywriter;

  @JsonKey(name: 'picUrl')
  String picUrl;

  @JsonKey(name: 'canDislike')
  bool canDislike;

  @JsonKey(name: 'playCount')
  int playCount;

  @JsonKey(name: 'trackCount')
  int trackCount;

  @JsonKey(name: 'highQuality')
  bool highQuality;

  @JsonKey(name: 'alg')
  String alg;

  Personalized(
    this.id,
    this.type,
    this.name,
    this.copywriter,
    this.picUrl,
    this.canDislike,
    this.playCount,
    this.trackCount,
    this.highQuality,
    this.alg,
  );

  factory Personalized.fromJson(Map<String, dynamic> srcJson) =>
      _$PersonalizedFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PersonalizedToJson(this);
}
