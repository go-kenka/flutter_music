import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter_music/api/models/play_list_entity.dart';
import 'package:flutter_music/util/dio_manager.dart';
import 'package:flutter_music/util/http_util.dart';

class PlayListService {
  final String url = "top/playlist";

  // 获取推荐歌单（30条）
  Future<PlayListEntity> getPlayList(String limit, String order) async {
    Map<String, dynamic> queryParameters = new Map.from({
      "limit": limit,
      "order": order,
    });
    var result;
    try {
      Response response = await DioManager.singleton.dio.get(
        HttpUtil.getApiUrl(url),
        queryParameters: queryParameters,
      );
      result = PlayListEntity.fromJson(response.data);
    } catch (e) {
      print(e.toString());
    }

    return result;
  }
}
