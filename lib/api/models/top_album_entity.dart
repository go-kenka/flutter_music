import 'package:json_annotation/json_annotation.dart'; 
  
part 'top_album_entity.g.dart';


@JsonSerializable()
  class TopAlbumEntity extends Object {

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'albums')
  List<Albums> albums;

  @JsonKey(name: 'code')
  int code;

  TopAlbumEntity(this.total,this.albums,this.code,);

  factory TopAlbumEntity.fromJson(Map<String, dynamic> srcJson) => _$TopAlbumEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TopAlbumEntityToJson(this);

}

  
@JsonSerializable()
  class Albums extends Object {

  @JsonKey(name: 'songs')
  List<dynamic> songs;

  @JsonKey(name: 'paid')
  bool paid;

  @JsonKey(name: 'onSale')
  bool onSale;

  @JsonKey(name: 'mark')
  int mark;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'blurPicUrl')
  String blurPicUrl;

  @JsonKey(name: 'companyId')
  int companyId;

  @JsonKey(name: 'pic')
  int pic;

  @JsonKey(name: 'tags')
  String tags;

  @JsonKey(name: 'artists')
  List<Artists> artists;

  @JsonKey(name: 'alias')
  List<dynamic> alias;

  @JsonKey(name: 'copyrightId')
  int copyrightId;

  @JsonKey(name: 'subType')
  String subType;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'picId')
  int picId;

  @JsonKey(name: 'artist')
  Artist artist;

  @JsonKey(name: 'briefDesc')
  String briefDesc;

  @JsonKey(name: 'commentThreadId')
  String commentThreadId;

  @JsonKey(name: 'publishTime')
  int publishTime;

  @JsonKey(name: 'picUrl')
  String picUrl;

  @JsonKey(name: 'company')
  String company;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'picId_str')
  String picIdStr;

  Albums(this.songs,this.paid,this.onSale,this.mark,this.status,this.blurPicUrl,this.companyId,this.pic,this.tags,this.artists,this.alias,this.copyrightId,this.subType,this.description,this.picId,this.artist,this.briefDesc,this.commentThreadId,this.publishTime,this.picUrl,this.company,this.name,this.id,this.type,this.size,this.picIdStr,);

  factory Albums.fromJson(Map<String, dynamic> srcJson) => _$AlbumsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AlbumsToJson(this);

}

  
@JsonSerializable()
  class Artists extends Object {

  @JsonKey(name: 'img1v1Id')
  int img1v1Id;

  @JsonKey(name: 'topicPerson')
  int topicPerson;

  @JsonKey(name: 'alias')
  List<dynamic> alias;

  @JsonKey(name: 'picId')
  int picId;

  @JsonKey(name: 'albumSize')
  int albumSize;

  @JsonKey(name: 'briefDesc')
  String briefDesc;

  @JsonKey(name: 'musicSize')
  int musicSize;

  @JsonKey(name: 'img1v1Url')
  String img1v1Url;

  @JsonKey(name: 'picUrl')
  String picUrl;

  @JsonKey(name: 'trans')
  String trans;

  @JsonKey(name: 'followed')
  bool followed;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'img1v1Id_str')
  String img1v1IdStr;

  Artists(this.img1v1Id,this.topicPerson,this.alias,this.picId,this.albumSize,this.briefDesc,this.musicSize,this.img1v1Url,this.picUrl,this.trans,this.followed,this.name,this.id,this.img1v1IdStr,);

  factory Artists.fromJson(Map<String, dynamic> srcJson) => _$ArtistsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ArtistsToJson(this);

}

  
@JsonSerializable()
  class Artist extends Object {

  @JsonKey(name: 'img1v1Id')
  int img1v1Id;

  @JsonKey(name: 'topicPerson')
  int topicPerson;

  @JsonKey(name: 'alias')
  List<String> alias;

  @JsonKey(name: 'picId')
  int picId;

  @JsonKey(name: 'albumSize')
  int albumSize;

  @JsonKey(name: 'briefDesc')
  String briefDesc;

  @JsonKey(name: 'musicSize')
  int musicSize;

  @JsonKey(name: 'img1v1Url')
  String img1v1Url;

  @JsonKey(name: 'picUrl')
  String picUrl;

  @JsonKey(name: 'trans')
  String trans;

  @JsonKey(name: 'followed')
  bool followed;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'picId_str')
  String picIdStr;

  @JsonKey(name: 'img1v1Id_str')
  String img1v1IdStr;

  Artist(this.img1v1Id,this.topicPerson,this.alias,this.picId,this.albumSize,this.briefDesc,this.musicSize,this.img1v1Url,this.picUrl,this.trans,this.followed,this.name,this.id,this.picIdStr,this.img1v1IdStr,);

  factory Artist.fromJson(Map<String, dynamic> srcJson) => _$ArtistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);

}

  
