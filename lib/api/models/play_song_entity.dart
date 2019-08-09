import 'package:json_annotation/json_annotation.dart'; 
  
part 'play_song_entity.g.dart';


@JsonSerializable()
  class PlaySongEntity extends Object {

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'code')
  int code;

  PlaySongEntity(this.data,this.code,);

  factory PlaySongEntity.fromJson(Map<String, dynamic> srcJson) => _$PlaySongEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlaySongEntityToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'br')
  int br;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'md5')
  String md5;

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'expi')
  int expi;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'gain')
  int gain;

  @JsonKey(name: 'fee')
  int fee;

  @JsonKey(name: 'payed')
  int payed;

  @JsonKey(name: 'flag')
  int flag;

  @JsonKey(name: 'canExtend')
  bool canExtend;

  @JsonKey(name: 'level')
  String level;

  @JsonKey(name: 'encodeType')
  String encodeType;

  Data(this.id,this.url,this.br,this.size,this.md5,this.code,this.expi,this.type,this.gain,this.fee,this.payed,this.flag,this.canExtend,this.level,this.encodeType,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
