import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter_music/api/models/banner_entity.dart';
import 'package:flutter_music/util/dio_manager.dart';
import 'package:flutter_music/util/http_util.dart';

class BannerService {
  final String url = "banner";

  // 获取轮播图片
  Future<BannerEntity> getBanners(String type) async {
    Map<String, dynamic> queryParameters = new Map.from({"type": type});
    var result;
    try {
      Response response = await DioManager.singleton.dio.get(
        HttpUtil.getApiUrl(url),
        queryParameters: queryParameters,
      );
      result = BannerEntity.fromJson(response.data);
    } catch (e) {
      print(e.toString());
    }

    return result;
  }
}
