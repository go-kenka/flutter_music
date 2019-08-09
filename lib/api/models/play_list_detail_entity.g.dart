// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_list_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayListDetailEntity _$PlayListDetailEntityFromJson(Map<String, dynamic> json) {
  return PlayListDetailEntity(
    json['playlist'] == null
        ? null
        : Playlist.fromJson(json['playlist'] as Map<String, dynamic>),
    json['code'] as int,
  );
}

Map<String, dynamic> _$PlayListDetailEntityToJson(
        PlayListDetailEntity instance) =>
    <String, dynamic>{
      'playlist': instance.playlist,
      'code': instance.code,
    };

Playlist _$PlaylistFromJson(Map<String, dynamic> json) {
  return Playlist(
    json['subscribers'] as List,
    json['subscribed'] as bool,
    json['creator'] == null
        ? null
        : Creator.fromJson(json['creator'] as Map<String, dynamic>),
    (json['tracks'] as List)
        ?.map((e) =>
            e == null ? null : Tracks.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['backgroundCoverId'] as int,
    json['subscribedCount'] as int,
    json['cloudTrackCount'] as int,
    json['createTime'] as int,
    json['highQuality'] as bool,
    json['adType'] as int,
    json['trackNumberUpdateTime'] as int,
    json['userId'] as int,
    json['privacy'] as int,
    json['newImported'] as bool,
    json['coverImgId'] as int,
    json['updateTime'] as int,
    json['coverImgUrl'] as String,
    json['specialType'] as int,
    json['trackCount'] as int,
    json['commentThreadId'] as String,
    json['trackUpdateTime'] as int,
    json['playCount'] as int,
    json['ordered'] as bool,
    json['tags'] as List,
    json['status'] as int,
    json['name'] as String,
    json['id'] as int,
    json['shareCount'] as int,
    json['coverImgId_str'] as String,
    json['commentCount'] as int,
  );
}

Map<String, dynamic> _$PlaylistToJson(Playlist instance) => <String, dynamic>{
      'subscribers': instance.subscribers,
      'subscribed': instance.subscribed,
      'creator': instance.creator,
      'tracks': instance.tracks,
      'backgroundCoverId': instance.backgroundCoverId,
      'subscribedCount': instance.subscribedCount,
      'cloudTrackCount': instance.cloudTrackCount,
      'createTime': instance.createTime,
      'highQuality': instance.highQuality,
      'adType': instance.adType,
      'trackNumberUpdateTime': instance.trackNumberUpdateTime,
      'userId': instance.userId,
      'privacy': instance.privacy,
      'newImported': instance.newImported,
      'coverImgId': instance.coverImgId,
      'updateTime': instance.updateTime,
      'coverImgUrl': instance.coverImgUrl,
      'specialType': instance.specialType,
      'trackCount': instance.trackCount,
      'commentThreadId': instance.commentThreadId,
      'trackUpdateTime': instance.trackUpdateTime,
      'playCount': instance.playCount,
      'ordered': instance.ordered,
      'tags': instance.tags,
      'status': instance.status,
      'name': instance.name,
      'id': instance.id,
      'shareCount': instance.shareCount,
      'coverImgId_str': instance.coverImgIdStr,
      'commentCount': instance.commentCount,
    };

Creator _$CreatorFromJson(Map<String, dynamic> json) {
  return Creator(
    json['defaultAvatar'] as bool,
    json['province'] as int,
    json['authStatus'] as int,
    json['followed'] as bool,
    json['avatarUrl'] as String,
    json['accountStatus'] as int,
    json['gender'] as int,
    json['city'] as int,
    json['birthday'] as int,
    json['userId'] as int,
    json['userType'] as int,
    json['nickname'] as String,
    json['signature'] as String,
    json['description'] as String,
    json['detailDescription'] as String,
    json['avatarImgId'] as int,
    json['backgroundImgId'] as int,
    json['backgroundUrl'] as String,
    json['authority'] as int,
    json['mutual'] as bool,
    json['djStatus'] as int,
    json['vipType'] as int,
    json['avatarImgIdStr'] as String,
    json['backgroundImgIdStr'] as String,
  );
}

Map<String, dynamic> _$CreatorToJson(Creator instance) => <String, dynamic>{
      'defaultAvatar': instance.defaultAvatar,
      'province': instance.province,
      'authStatus': instance.authStatus,
      'followed': instance.followed,
      'avatarUrl': instance.avatarUrl,
      'accountStatus': instance.accountStatus,
      'gender': instance.gender,
      'city': instance.city,
      'birthday': instance.birthday,
      'userId': instance.userId,
      'userType': instance.userType,
      'nickname': instance.nickname,
      'signature': instance.signature,
      'description': instance.description,
      'detailDescription': instance.detailDescription,
      'avatarImgId': instance.avatarImgId,
      'backgroundImgId': instance.backgroundImgId,
      'backgroundUrl': instance.backgroundUrl,
      'authority': instance.authority,
      'mutual': instance.mutual,
      'djStatus': instance.djStatus,
      'vipType': instance.vipType,
      'avatarImgIdStr': instance.avatarImgIdStr,
      'backgroundImgIdStr': instance.backgroundImgIdStr,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) {
  return Tracks(
    json['name'] as String,
    json['id'] as int,
    json['pst'] as int,
    json['t'] as int,
    (json['ar'] as List)
        ?.map((e) => e == null ? null : Ar.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['alia'] as List,
    json['pop'] as int,
    json['st'] as int,
    json['rt'] as String,
    json['fee'] as int,
    json['v'] as int,
    json['cf'] as String,
    json['al'] == null ? null : Al.fromJson(json['al'] as Map<String, dynamic>),
    json['dt'] as int,
    json['cd'] as String,
    json['no'] as int,
    json['ftype'] as int,
    json['rtUrls'] as List,
    json['djId'] as int,
    json['copyright'] as int,
    json['s_id'] as int,
    json['mark'] as int,
    json['cp'] as int,
    json['mv'] as int,
    json['mst'] as int,
    json['rtype'] as int,
    json['publishTime'] as int,
  );
}

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
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
      'cd': instance.cd,
      'no': instance.no,
      'ftype': instance.ftype,
      'rtUrls': instance.rtUrls,
      'djId': instance.djId,
      'copyright': instance.copyright,
      's_id': instance.sId,
      'mark': instance.mark,
      'cp': instance.cp,
      'mv': instance.mv,
      'mst': instance.mst,
      'rtype': instance.rtype,
      'publishTime': instance.publishTime,
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
