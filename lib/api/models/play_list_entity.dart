import 'package:json_annotation/json_annotation.dart';

part 'play_list_entity.g.dart';

@JsonSerializable()
class PlayListEntity extends Object {
  @JsonKey(name: 'playlists')
  List<Playlists> playlists;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'more')
  bool more;

  @JsonKey(name: 'cat')
  String cat;

  PlayListEntity(
    this.playlists,
    this.total,
    this.code,
    this.more,
    this.cat,
  );

  factory PlayListEntity.fromJson(Map<String, dynamic> srcJson) =>
      _$PlayListEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlayListEntityToJson(this);
}

@JsonSerializable()
class Playlists extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'trackNumberUpdateTime')
  int trackNumberUpdateTime;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'userId')
  int userId;

  @JsonKey(name: 'createTime')
  int createTime;

  @JsonKey(name: 'updateTime')
  int updateTime;

  @JsonKey(name: 'subscribedCount')
  int subscribedCount;

  @JsonKey(name: 'trackCount')
  int trackCount;

  @JsonKey(name: 'cloudTrackCount')
  int cloudTrackCount;

  @JsonKey(name: 'coverImgUrl')
  String coverImgUrl;

  @JsonKey(name: 'coverImgId')
  int coverImgId;

  @JsonKey(name: 'tags')
  List<dynamic> tags;

  @JsonKey(name: 'playCount')
  int playCount;

  @JsonKey(name: 'trackUpdateTime')
  int trackUpdateTime;

  @JsonKey(name: 'specialType')
  int specialType;

  @JsonKey(name: 'totalDuration')
  int totalDuration;

  @JsonKey(name: 'creator')
  Creator creator;

  @JsonKey(name: 'subscribers')
  List<dynamic> subscribers;

  @JsonKey(name: 'commentThreadId')
  String commentThreadId;

  @JsonKey(name: 'newImported')
  bool newImported;

  @JsonKey(name: 'adType')
  int adType;

  @JsonKey(name: 'highQuality')
  bool highQuality;

  @JsonKey(name: 'privacy')
  int privacy;

  @JsonKey(name: 'ordered')
  bool ordered;

  @JsonKey(name: 'anonimous')
  bool anonimous;

  @JsonKey(name: 'coverStatus')
  int coverStatus;

  @JsonKey(name: 'shareCount')
  int shareCount;

  @JsonKey(name: 'coverImgId_str')
  String coverImgIdStr;

  @JsonKey(name: 'commentCount')
  int commentCount;

  Playlists(
    this.name,
    this.id,
    this.trackNumberUpdateTime,
    this.status,
    this.userId,
    this.createTime,
    this.updateTime,
    this.subscribedCount,
    this.trackCount,
    this.cloudTrackCount,
    this.coverImgUrl,
    this.coverImgId,
    this.tags,
    this.playCount,
    this.trackUpdateTime,
    this.specialType,
    this.totalDuration,
    this.creator,
    this.subscribers,
    this.commentThreadId,
    this.newImported,
    this.adType,
    this.highQuality,
    this.privacy,
    this.ordered,
    this.anonimous,
    this.coverStatus,
    this.shareCount,
    this.coverImgIdStr,
    this.commentCount,
  );

  factory Playlists.fromJson(Map<String, dynamic> srcJson) =>
      _$PlaylistsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlaylistsToJson(this);
}

@JsonSerializable()
class Creator extends Object {
  @JsonKey(name: 'defaultAvatar')
  bool defaultAvatar;

  @JsonKey(name: 'province')
  int province;

  @JsonKey(name: 'authStatus')
  int authStatus;

  @JsonKey(name: 'followed')
  bool followed;

  @JsonKey(name: 'avatarUrl')
  String avatarUrl;

  @JsonKey(name: 'accountStatus')
  int accountStatus;

  @JsonKey(name: 'gender')
  int gender;

  @JsonKey(name: 'city')
  int city;

  @JsonKey(name: 'birthday')
  int birthday;

  @JsonKey(name: 'userId')
  int userId;

  @JsonKey(name: 'userType')
  int userType;

  @JsonKey(name: 'nickname')
  String nickname;

  @JsonKey(name: 'signature')
  String signature;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'detailDescription')
  String detailDescription;

  @JsonKey(name: 'avatarImgId')
  int avatarImgId;

  @JsonKey(name: 'backgroundImgId')
  int backgroundImgId;

  @JsonKey(name: 'backgroundUrl')
  String backgroundUrl;

  @JsonKey(name: 'authority')
  int authority;

  @JsonKey(name: 'mutual')
  bool mutual;

  @JsonKey(name: 'djStatus')
  int djStatus;

  @JsonKey(name: 'vipType')
  int vipType;

  @JsonKey(name: 'backgroundImgIdStr')
  String backgroundImgIdStr;

  @JsonKey(name: 'avatarImgIdStr')
  String avatarImgIdStr;

  Creator(
    this.defaultAvatar,
    this.province,
    this.authStatus,
    this.followed,
    this.avatarUrl,
    this.accountStatus,
    this.gender,
    this.city,
    this.birthday,
    this.userId,
    this.userType,
    this.nickname,
    this.signature,
    this.description,
    this.detailDescription,
    this.avatarImgId,
    this.backgroundImgId,
    this.backgroundUrl,
    this.authority,
    this.mutual,
    this.djStatus,
    this.vipType,
    this.backgroundImgIdStr,
    this.avatarImgIdStr,
  );

  factory Creator.fromJson(Map<String, dynamic> srcJson) =>
      _$CreatorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}
