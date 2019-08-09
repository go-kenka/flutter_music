import 'package:json_annotation/json_annotation.dart'; 
  
part 'banner_entity.g.dart';


@JsonSerializable()
  class BannerEntity extends Object {

  @JsonKey(name: 'banners')
  List<Banners> banners;

  @JsonKey(name: 'code')
  int code;

  BannerEntity(this.banners,this.code,);

  factory BannerEntity.fromJson(Map<String, dynamic> srcJson) => _$BannerEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannerEntityToJson(this);

}

  
@JsonSerializable()
  class Banners extends Object {

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'targetId')
  int targetId;

  @JsonKey(name: 'targetType')
  int targetType;

  @JsonKey(name: 'titleColor')
  String titleColor;

  @JsonKey(name: 'typeTitle')
  String typeTitle;

  @JsonKey(name: 'exclusive')
  bool exclusive;

  @JsonKey(name: 'monitorImpressList')
  List<dynamic> monitorImpressList;

  @JsonKey(name: 'monitorClickList')
  List<dynamic> monitorClickList;

  @JsonKey(name: 'encodeId')
  String encodeId;

  @JsonKey(name: 'song')
  Song song;

  @JsonKey(name: 'bannerId')
  String bannerId;

  @JsonKey(name: 'scm')
  String scm;

  @JsonKey(name: 'requestId')
  String requestId;

  @JsonKey(name: 'showAdTag')
  bool showAdTag;

  Banners(this.pic,this.targetId,this.targetType,this.titleColor,this.typeTitle,this.exclusive,this.monitorImpressList,this.monitorClickList,this.encodeId,this.song,this.bannerId,this.scm,this.requestId,this.showAdTag,);

  factory Banners.fromJson(Map<String, dynamic> srcJson) => _$BannersFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannersToJson(this);

}

  
@JsonSerializable()
  class Song extends Object {

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
  List<String> alia;

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

  @JsonKey(name: 'h')
  H h;

  @JsonKey(name: 'm')
  M m;

  @JsonKey(name: 'l')
  L l;

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

  @JsonKey(name: 'mst')
  int mst;

  @JsonKey(name: 'cp')
  int cp;

  @JsonKey(name: 'mv')
  int mv;

  @JsonKey(name: 'rtype')
  int rtype;

  @JsonKey(name: 'publishTime')
  int publishTime;

  @JsonKey(name: 'privilege')
  Privilege privilege;

  Song(this.name,this.id,this.pst,this.t,this.ar,this.alia,this.pop,this.st,this.rt,this.fee,this.v,this.cf,this.al,this.dt,this.h,this.m,this.l,this.cd,this.no,this.ftype,this.rtUrls,this.djId,this.copyright,this.sId,this.mark,this.mst,this.cp,this.mv,this.rtype,this.publishTime,this.privilege,);

  factory Song.fromJson(Map<String, dynamic> srcJson) => _$SongFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SongToJson(this);

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

  Ar(this.id,this.name,this.tns,this.alias,);

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

  Al(this.id,this.name,this.picUrl,this.tns,this.picStr,this.pic,);

  factory Al.fromJson(Map<String, dynamic> srcJson) => _$AlFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AlToJson(this);

}

  
@JsonSerializable()
  class H extends Object {

  @JsonKey(name: 'br')
  int br;

  @JsonKey(name: 'fid')
  int fid;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'vd')
  int vd;

  H(this.br,this.fid,this.size,this.vd,);

  factory H.fromJson(Map<String, dynamic> srcJson) => _$HFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HToJson(this);

}

  
@JsonSerializable()
  class M extends Object {

  @JsonKey(name: 'br')
  int br;

  @JsonKey(name: 'fid')
  int fid;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'vd')
  int vd;

  M(this.br,this.fid,this.size,this.vd,);

  factory M.fromJson(Map<String, dynamic> srcJson) => _$MFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MToJson(this);

}

  
@JsonSerializable()
  class L extends Object {

  @JsonKey(name: 'br')
  int br;

  @JsonKey(name: 'fid')
  int fid;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'vd')
  int vd;

  L(this.br,this.fid,this.size,this.vd,);

  factory L.fromJson(Map<String, dynamic> srcJson) => _$LFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LToJson(this);

}

  
@JsonSerializable()
  class Privilege extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'fee')
  int fee;

  @JsonKey(name: 'payed')
  int payed;

  @JsonKey(name: 'st')
  int st;

  @JsonKey(name: 'pl')
  int pl;

  @JsonKey(name: 'dl')
  int dl;

  @JsonKey(name: 'sp')
  int sp;

  @JsonKey(name: 'cp')
  int cp;

  @JsonKey(name: 'subp')
  int subp;

  @JsonKey(name: 'cs')
  bool cs;

  @JsonKey(name: 'maxbr')
  int maxbr;

  @JsonKey(name: 'fl')
  int fl;

  @JsonKey(name: 'toast')
  bool toast;

  @JsonKey(name: 'flag')
  int flag;

  @JsonKey(name: 'preSell')
  bool preSell;

  Privilege(this.id,this.fee,this.payed,this.st,this.pl,this.dl,this.sp,this.cp,this.subp,this.cs,this.maxbr,this.fl,this.toast,this.flag,this.preSell,);

  factory Privilege.fromJson(Map<String, dynamic> srcJson) => _$PrivilegeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PrivilegeToJson(this);

}

  
