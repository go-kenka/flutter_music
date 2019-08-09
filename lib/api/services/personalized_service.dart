import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter_music/api/models/personalized_entity.dart';
import 'package:flutter_music/util/dio_manager.dart';
import 'package:flutter_music/util/http_util.dart';

class PersonalizedService {
  final String url = "personalized";

  // 获取推荐歌单（30条）
  Future<PersonalizedEntity> getPersonalizedList() async {
    var result;
    try {
      Response response = await DioManager.singleton.dio.get(
        HttpUtil.getApiUrl(url),
      );
      result = PersonalizedEntity.fromJson(response.data);
    } catch (e) {
      print(e.toString());
    }

    return result;
  }
}
