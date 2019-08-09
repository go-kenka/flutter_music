import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter_music/api/models/personalized_entity.dart';
import 'package:flutter_music/api/models/top_album_entity.dart';
import 'package:flutter_music/util/dio_manager.dart';
import 'package:flutter_music/util/http_util.dart';

class AlbumService {
  final String url = "top/album";

  // 获取推荐歌单（30条）
  Future<TopAlbumEntity> getPersonalizedList(
      String offset, String limit) async {
    Map<String, dynamic> queryParameters =
        new Map.from({"offset": offset, "limit": limit});
    var result;
    try {
      Response response = await DioManager.singleton.dio.get(
        HttpUtil.getApiUrl(url),
        queryParameters: queryParameters,
      );
      result = TopAlbumEntity.fromJson(response.data);
    } catch (e) {
      print(e.toString());
    }

    return result;
  }
}
