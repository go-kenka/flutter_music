import 'package:json_annotation/json_annotation.dart';

part 'play_list_detail_entity.g.dart';

@JsonSerializable()
class PlayListDetailEntity extends Object {
  @JsonKey(name: 'playlist')
  Playlist playlist;

  @JsonKey(name: 'code')
  int code;

  PlayListDetailEntity(
    this.playlist,
    this.code,
  );

  factory PlayListDetailEntity.fromJson(Map<String, dynamic> srcJson) =>
      _$PlayListDetailEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlayListDetailEntityToJson(this);
}

@JsonSerializable()
class Playlist extends Object {
  @JsonKey(name: 'subscribers')
  List<dynamic> subscribers;

  @JsonKey(name: 'subscribed')
  bool subscribed;

  @JsonKey(name: 'creator')
  Creator creator;

  @JsonKey(name: 'tracks')
  List<Tracks> tracks;

  @JsonKey(name: 'backgroundCoverId')
  int backgroundCoverId;

  @JsonKey(name: 'subscribedCount')
  int subscribedCount;

  @JsonKey(name: 'cloudTrackCount')
  int cloudTrackCount;

  @JsonKey(name: 'createTime')
  int createTime;

  @JsonKey(name: 'highQuality')
  bool highQuality;

  @JsonKey(name: 'adType')
  int adType;

  @JsonKey(name: 'trackNumberUpdateTime')
  int trackNumberUpdateTime;

  @JsonKey(name: 'userId')
  int userId;

  @JsonKey(name: 'privacy')
  int privacy;

  @JsonKey(name: 'newImported')
  bool newImported;

  @JsonKey(name: 'coverImgId')
  int coverImgId;

  @JsonKey(name: 'updateTime')
  int updateTime;

  @JsonKey(name: 'coverImgUrl')
  String coverImgUrl;

  @JsonKey(name: 'specialType')
  int specialType;

  @JsonKey(name: 'trackCount')
  int trackCount;

  @JsonKey(name: 'commentThreadId')
  String commentThreadId;

  @JsonKey(name: 'trackUpdateTime')
  int trackUpdateTime;

  @JsonKey(name: 'playCount')
  int playCount;

  @JsonKey(name: 'ordered')
  bool ordered;

  @JsonKey(name: 'tags')
  List<dynamic> tags;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'shareCount')
  int shareCount;

  @JsonKey(name: 'coverImgId_str')
  String coverImgIdStr;

  @JsonKey(name: 'commentCount')
  int commentCount;

  Playlist(
    this.subscribers,
    this.subscribed,
    this.creator,
    this.tracks,
    this.backgroundCoverId,
    this.subscribedCount,
    this.cloudTrackCount,
    this.createTime,
    this.highQuality,
    this.adType,
    this.trackNumberUpdateTime,
    this.userId,
    this.privacy,
    this.newImported,
    this.coverImgId,
    this.updateTime,
    this.coverImgUrl,
    this.specialType,
    this.trackCount,
    this.commentThreadId,
    this.trackUpdateTime,
    this.playCount,
    this.ordered,
    this.tags,
    this.status,
    this.name,
    this.id,
    this.shareCount,
    this.coverImgIdStr,
    this.commentCount,
  );

  factory Playlist.fromJson(Map<String, dynamic> srcJson) =>
      _$PlaylistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlaylistToJson(this);
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

  @JsonKey(name: 'avatarImgIdStr')
  String avatarImgIdStr;

  @JsonKey(name: 'backgroundImgIdStr')
  String backgroundImgIdStr;

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
    this.avatarImgIdStr,
    this.backgroundImgIdStr,
  );

  factory Creator.fromJson(Map<String, dynamic> srcJson) =>
      _$CreatorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}

@JsonSerializable()
class Tracks extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'pst')
  int pst;

  @JsonKey(name: 't')
  int t;

  @JsonKey(name: 'ar')
  List<Ar> ar;

  @JsonKey(name: 'alia')
  List<dynamic> alia;

  @JsonKey(name: 'pop')
  int pop;

  @JsonKey(name: 'st')
  int st;

  @JsonKey(name: 'rt')
  String rt;

  @JsonKey(name: 'fee')
  int fee;

  @JsonKey(name: 'v')
  int v;

  @JsonKey(name: 'cf')
  String cf;

  @JsonKey(name: 'al')
  Al al;

  @JsonKey(name: 'dt')
  int dt;

  @JsonKey(name: 'cd')
  String cd;

  @JsonKey(name: 'no')
  int no;

  @JsonKey(name: 'ftype')
  int ftype;

  @JsonKey(name: 'rtUrls')
  List<dynamic> rtUrls;

  @JsonKey(name: 'djId')
  int djId;

  @JsonKey(name: 'copyright')
  int copyright;

  @JsonKey(name: 's_id')
  int sId;

  @JsonKey(name: 'mark')
  int mark;

  @JsonKey(name: 'cp')
  int cp;

  @JsonKey(name: 'mv')
  int mv;

  @JsonKey(name: 'mst')
  int mst;

  @JsonKey(name: 'rtype')
  int rtype;

  @JsonKey(name: 'publishTime')
  int publishTime;

  Tracks(
    this.name,
    this.id,
    this.pst,
    this.t,
    this.ar,
    this.alia,
    this.pop,
    this.st,
    this.rt,
    this.fee,
    this.v,
    this.cf,
    this.al,
    this.dt,
    this.cd,
    this.no,
    this.ftype,
    this.rtUrls,
    this.djId,
    this.copyright,
    this.sId,
    this.mark,
    this.cp,
    this.mv,
    this.mst,
    this.rtype,
    this.publishTime,
  );

  factory Tracks.fromJson(Map<String, dynamic> srcJson) =>
      _$TracksFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable()
class Ar extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'tns')
  List<dynamic> tns;

  @JsonKey(name: 'alias')
  List<dynamic> alias;

  Ar(
    this.id,
    this.name,
    this.tns,
    this.alias,
  );

  factory Ar.fromJson(Map<String, dynamic> srcJson) => _$ArFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ArToJson(this);
}

@JsonSerializable()
class Al extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'picUrl')
  String picUrl;

  @JsonKey(name: 'tns')
  List<dynamic> tns;

  @JsonKey(name: 'pic_str')
  String picStr;

  @JsonKey(name: 'pic')
  int pic;

  Al(
    this.id,
    this.name,
    this.picUrl,
    this.tns,
    this.picStr,
    this.pic,
  );

  factory Al.fromJson(Map<String, dynamic> srcJson) => _$AlFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AlToJson(this);
}
