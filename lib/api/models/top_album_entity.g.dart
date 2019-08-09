// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_album_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopAlbumEntity _$TopAlbumEntityFromJson(Map<String, dynamic> json) {
  return TopAlbumEntity(
    json['total'] as int,
    (json['albums'] as List)
        ?.map((e) =>
            e == null ? null : Albums.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['code'] as int,
  );
}

Map<String, dynamic> _$TopAlbumEntityToJson(TopAlbumEntity instance) =>
    <String, dynamic>{
      'total': instance.total,
      'albums': instance.albums,
      'code': instance.code,
    };

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return Albums(
    json['songs'] as List,
    json['paid'] as bool,
    json['onSale'] as bool,
    json['mark'] as int,
    json['status'] as int,
    json['blurPicUrl'] as String,
    json['companyId'] as int,
    json['pic'] as int,
    json['tags'] as String,
    (json['artists'] as List)
        ?.map((e) =>
            e == null ? null : Artists.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['alias'] as List,
    json['copyrightId'] as int,
    json['subType'] as String,
    json['description'] as String,
    json['picId'] as int,
    json['artist'] == null
        ? null
        : Artist.fromJson(json['artist'] as Map<String, dynamic>),
    json['briefDesc'] as String,
    json['commentThreadId'] as String,
    json['publishTime'] as int,
    json['picUrl'] as String,
    json['company'] as String,
    json['name'] as String,
    json['id'] as int,
    json['type'] as String,
    json['size'] as int,
    json['picId_str'] as String,
  );
}

Map<String, dynamic> _$AlbumsToJson(Albums instance) => <String, dynamic>{
      'songs': instance.songs,
      'paid': instance.paid,
      'onSale': instance.onSale,
      'mark': instance.mark,
      'status': instance.status,
      'blurPicUrl': instance.blurPicUrl,
      'companyId': instance.companyId,
      'pic': instance.pic,
      'tags': instance.tags,
      'artists': instance.artists,
      'alias': instance.alias,
      'copyrightId': instance.copyrightId,
      'subType': instance.subType,
      'description': instance.description,
      'picId': instance.picId,
      'artist': instance.artist,
      'briefDesc': instance.briefDesc,
      'commentThreadId': instance.commentThreadId,
      'publishTime': instance.publishTime,
      'picUrl': instance.picUrl,
      'company': instance.company,
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
      'size': instance.size,
      'picId_str': instance.picIdStr,
    };

Artists _$ArtistsFromJson(Map<String, dynamic> json) {
  return Artists(
    json['img1v1Id'] as int,
    json['topicPerson'] as int,
    json['alias'] as List,
    json['picId'] as int,
    json['albumSize'] as int,
    json['briefDesc'] as String,
    json['musicSize'] as int,
    json['img1v1Url'] as String,
    json['picUrl'] as String,
    json['trans'] as String,
    json['followed'] as bool,
    json['name'] as String,
    json['id'] as int,
    json['img1v1Id_str'] as String,
  );
}

Map<String, dynamic> _$ArtistsToJson(Artists instance) => <String, dynamic>{
      'img1v1Id': instance.img1v1Id,
      'topicPerson': instance.topicPerson,
      'alias': instance.alias,
      'picId': instance.picId,
      'albumSize': instance.albumSize,
      'briefDesc': instance.briefDesc,
      'musicSize': instance.musicSize,
      'img1v1Url': instance.img1v1Url,
      'picUrl': instance.picUrl,
      'trans': instance.trans,
      'followed': instance.followed,
      'name': instance.name,
      'id': instance.id,
      'img1v1Id_str': instance.img1v1IdStr,
    };

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return Artist(
    json['img1v1Id'] as int,
    json['topicPerson'] as int,
    (json['alias'] as List)?.map((e) => e as String)?.toList(),
    json['picId'] as int,
    json['albumSize'] as int,
    json['briefDesc'] as String,
    json['musicSize'] as int,
    json['img1v1Url'] as String,
    json['picUrl'] as String,
    json['trans'] as String,
    json['followed'] as bool,
    json['name'] as String,
    json['id'] as int,
    json['picId_str'] as String,
    json['img1v1Id_str'] as String,
  );
}

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'img1v1Id': instance.img1v1Id,
      'topicPerson': instance.topicPerson,
      'alias': instance.alias,
      'picId': instance.picId,
      'albumSize': instance.albumSize,
      'briefDesc': instance.briefDesc,
      'musicSize': instance.musicSize,
      'img1v1Url': instance.img1v1Url,
      'picUrl': instance.picUrl,
      'trans': instance.trans,
      'followed': instance.followed,
      'name': instance.name,
      'id': instance.id,
      'picId_str': instance.picIdStr,
      'img1v1Id_str': instance.img1v1IdStr,
    };
