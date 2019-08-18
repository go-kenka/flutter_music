import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter_music/api/models/play_list_detail_entity.dart';
import 'package:flutter_music/util/dio_manager.dart';
import 'package:flutter_music/util/http_util.dart';

class TopListService {
  final String url = "top/list";

  // 获取推荐歌单（30条）
  Future<PlayListDetailEntity> getTopList(String idx) async {
    Map<String, dynamic> queryParameters = new Map.from({
      "idx": idx,
    });
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
