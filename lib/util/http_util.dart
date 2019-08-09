import 'package:flutter_music/common/config/server.dart';

class HttpUtil {
  static String getApiUrl(String uri) {
    // 拼接URL
    String host = Server.baseUrl;
    return '$host/$uri';
  }
}
