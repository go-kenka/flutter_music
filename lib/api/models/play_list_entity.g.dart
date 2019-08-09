// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayListEntity _$PlayListEntityFromJson(Map<String, dynamic> json) {
  return PlayListEntity(
    (json['playlists'] as List)
        ?.map((e) =>
            e == null ? null : Playlists.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['total'] as int,
    json['code'] as int,
    json['more'] as bool,
    json['cat'] as String,
  );
}

Map<String, dynamic> _$PlayListEntityToJson(PlayListEntity instance) =>
    <String, dynamic>{
      'playlists': instance.playlists,
      'total': instance.total,
      'code': instance.code,
      'more': instance.more,
      'cat': instance.cat,
    };

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) {
  return Playlists(
    json['name'] as String,
    json['id'] as int,
    json['trackNumberUpdateTime'] as int,
    json['status'] as int,
    json['userId'] as int,
    json['createTime'] as int,
    json['updateTime'] as int,
    json['subscribedCount'] as int,
    json['trackCount'] as int,
    json['cloudTrackCount'] as int,
    json['coverImgUrl'] as String,
    json['coverImgId'] as int,
    json['tags'] as List,
    json['playCount'] as int,
    json['trackUpdateTime'] as int,
    json['specialType'] as int,
    json['totalDuration'] as int,
    json['creator'] == null
        ? null
        : Creator.fromJson(json['creator'] as Map<String, dynamic>),
    json['subscribers'] as List,
    json['commentThreadId'] as String,
    json['newImported'] as bool,
    json['adType'] as int,
    json['highQuality'] as bool,
    json['privacy'] as int,
    json['ordered'] as bool,
    json['anonimous'] as bool,
    json['coverStatus'] as int,
    json['shareCount'] as int,
    json['coverImgId_str'] as String,
    json['commentCount'] as int,
  );
}

Map<String, dynamic> _$PlaylistsToJson(Playlists instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'trackNumberUpdateTime': instance.trackNumberUpdateTime,
      'status': instance.status,
      'userId': instance.userId,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'subscribedCount': instance.subscribedCount,
      'trackCount': instance.trackCount,
      'cloudTrackCount': instance.cloudTrackCount,
      'coverImgUrl': instance.coverImgUrl,
      'coverImgId': instance.coverImgId,
      'tags': instance.tags,
      'playCount': instance.playCount,
      'trackUpdateTime': instance.trackUpdateTime,
      'specialType': instance.specialType,
      'totalDuration': instance.totalDuration,
      'creator': instance.creator,
      'subscribers': instance.subscribers,
      'commentThreadId': instance.commentThreadId,
      'newImported': instance.newImported,
      'adType': instance.adType,
      'highQuality': instance.highQuality,
      'privacy': instance.privacy,
      'ordered': instance.ordered,
      'anonimous': instance.anonimous,
      'coverStatus': instance.coverStatus,
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
    json['backgroundImgIdStr'] as String,
    json['avatarImgIdStr'] as String,
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
      'backgroundImgIdStr': instance.backgroundImgIdStr,
      'avatarImgIdStr': instance.avatarImgIdStr,
    };
