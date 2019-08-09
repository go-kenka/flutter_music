// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerEntity _$BannerEntityFromJson(Map<String, dynamic> json) {
  return BannerEntity(
    (json['banners'] as List)
        ?.map((e) =>
            e == null ? null : Banners.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['code'] as int,
  );
}

Map<String, dynamic> _$BannerEntityToJson(BannerEntity instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'code': instance.code,
    };

Banners _$BannersFromJson(Map<String, dynamic> json) {
  return Banners(
    json['pic'] as String,
    json['targetId'] as int,
    json['targetType'] as int,
    json['titleColor'] as String,
    json['typeTitle'] as String,
    json['exclusive'] as bool,
    json['monitorImpressList'] as List,
    json['monitorClickList'] as List,
    json['encodeId'] as String,
    json['song'] == null
        ? null
        : Song.fromJson(json['song'] as Map<String, dynamic>),
    json['bannerId'] as String,
    json['scm'] as String,
    json['requestId'] as String,
    json['showAdTag'] as bool,
  );
}

Map<String, dynamic> _$BannersToJson(Banners instance) => <String, dynamic>{
      'pic': instance.pic,
      'targetId': instance.targetId,
      'targetType': instance.targetType,
      'titleColor': instance.titleColor,
      'typeTitle': instance.typeTitle,
      'exclusive': instance.exclusive,
      'monitorImpressList': instance.monitorImpressList,
      'monitorClickList': instance.monitorClickList,
      'encodeId': instance.encodeId,
      'song': instance.song,
      'bannerId': instance.bannerId,
      'scm': instance.scm,
      'requestId': instance.requestId,
      'showAdTag': instance.showAdTag,
    };

Song _$SongFromJson(Map<String, dynamic> json) {
  return Song(
    json['name'] as String,
    json['id'] as int,
    json['pst'] as int,
    json['t'] as int,
    (json['ar'] as List)
        ?.map((e) => e == null ? null : Ar.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['alia'] as List)?.map((e) => e as String)?.toList(),
    json['pop'] as int,
    json['st'] as int,
    json['rt'] as String,
    json['fee'] as int,
    json['v'] as int,
    json['cf'] as String,
    json['al'] == null ? null : Al.fromJson(json['al'] as Map<String, dynamic>),
    json['dt'] as int,
    json['h'] == null ? null : H.fromJson(json['h'] as Map<String, dynamic>),
    json['m'] == null ? null : M.fromJson(json['m'] as Map<String, dynamic>),
    json['l'] == null ? null : L.fromJson(json['l'] as Map<String, dynamic>),
    json['cd'] as String,
    json['no'] as int,
    json['ftype'] as int,
    json['rtUrls'] as List,
    json['djId'] as int,
    json['copyright'] as int,
    json['s_id'] as int,
    json['mark'] as int,
    json['mst'] as int,
    json['cp'] as int,
    json['mv'] as int,
    json['rtype'] as int,
    json['publishTime'] as int,
    json['privilege'] == null
        ? null
        : Privilege.fromJson(json['privilege'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SongToJson(Song instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'pst': instance.pst,
      't': instance.t,
      'ar': instance.ar,
      'alia': instance.alia,
      'pop': instance.pop,
      'st': instance.st,
      'rt': instance.rt,
      'fee': instance.fee,
      'v': instance.v,
      'cf': instance.cf,
      'al': instance.al,
      'dt': instance.dt,
      'h': instance.h,
      'm': instance.m,
      'l': instance.l,
      'cd': instance.cd,
      'no': instance.no,
      'ftype': instance.ftype,
      'rtUrls': instance.rtUrls,
      'djId': instance.djId,
      'copyright': instance.copyright,
      's_id': instance.sId,
      'mark': instance.mark,
      'mst': instance.mst,
      'cp': instance.cp,
      'mv': instance.mv,
      'rtype': instance.rtype,
      'publishTime': instance.publishTime,
      'privilege': instance.privilege,
    };

Ar _$ArFromJson(Map<String, dynamic> json) {
  return Ar(
    json['id'] as int,
    json['name'] as String,
    json['tns'] as List,
    json['alias'] as List,
  );
}

Map<String, dynamic> _$ArToJson(Ar instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tns': instance.tns,
      'alias': instance.alias,
    };

Al _$AlFromJson(Map<String, dynamic> json) {
  return Al(
    json['id'] as int,
    json['name'] as String,
    json['picUrl'] as String,
    json['tns'] as List,
    json['pic_str'] as String,
    json['pic'] as int,
  );
}

Map<String, dynamic> _$AlToJson(Al instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picUrl': instance.picUrl,
      'tns': instance.tns,
      'pic_str': instance.picStr,
      'pic': instance.pic,
    };

H _$HFromJson(Map<String, dynamic> json) {
  return H(
    json['br'] as int,
    json['fid'] as int,
    json['size'] as int,
    json['vd'] as int,
  );
}

Map<String, dynamic> _$HToJson(H instance) => <String, dynamic>{
      'br': instance.br,
      'fid': instance.fid,
      'size': instance.size,
      'vd': instance.vd,
    };

M _$MFromJson(Map<String, dynamic> json) {
  return M(
    json['br'] as int,
    json['fid'] as int,
    json['size'] as int,
    json['vd'] as int,
  );
}

Map<String, dynamic> _$MToJson(M instance) => <String, dynamic>{
      'br': instance.br,
      'fid': instance.fid,
      'size': instance.size,
      'vd': instance.vd,
    };

L _$LFromJson(Map<String, dynamic> json) {
  return L(
    json['br'] as int,
    json['fid'] as int,
    json['size'] as int,
    json['vd'] as int,
  );
}

Map<String, dynamic> _$LToJson(L instance) => <String, dynamic>{
      'br': instance.br,
      'fid': instance.fid,
      'size': instance.size,
      'vd': instance.vd,
    };

Privilege _$PrivilegeFromJson(Map<String, dynamic> json) {
  return Privilege(
    json['id'] as int,
    json['fee'] as int,
    json['payed'] as int,
    json['st'] as int,
    json['pl'] as int,
    json['dl'] as int,
    json['sp'] as int,
    json['cp'] as int,
    json['subp'] as int,
    json['cs'] as bool,
    json['maxbr'] as int,
    json['fl'] as int,
    json['toast'] as bool,
    json['flag'] as int,
    json['preSell'] as bool,
  );
}

Map<String, dynamic> _$PrivilegeToJson(Privilege instance) => <String, dynamic>{
      'id': instance.id,
      'fee': instance.fee,
      'payed': instance.payed,
      'st': instance.st,
      'pl': instance.pl,
      'dl': instance.dl,
      'sp': instance.sp,
      'cp': instance.cp,
      'subp': instance.subp,
      'cs': instance.cs,
      'maxbr': instance.maxbr,
      'fl': instance.fl,
      'toast': instance.toast,
      'flag': instance.flag,
      'preSell': instance.preSell,
    };
