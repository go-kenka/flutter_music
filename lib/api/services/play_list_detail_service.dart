import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter_music/api/models/play_list_detail_entity.dart';
import 'package:flutter_music/util/dio_manager.dart';
import 'package:flutter_music/util/http_util.dart';

class PlayListDetailService {
  final String url = "playlist/detail";

  // 获取推荐歌单（30条）
  Future<PlayListDetailEntity> getPlayListDetail(String id) async {
    Map<String, dynamic> queryParameters = new Map.from({"id": id});
    var result;
    try {
      Response response = await DioManager.singleton.dio.get(
        HttpUtil.getApiUrl(url),
        queryParameters: queryParameters,
      );
      result = PlayListDetailEntity.fromJson(response.data);
    } catch (e) {
      print(e.toString());
    }

    return result;
  }
}
