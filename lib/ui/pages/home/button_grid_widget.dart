import 'package:flutter/material.dart';

class ButtonGridWidget extends StatelessWidget {
  const ButtonGridWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 0.5),
        ),
        // color: Color(0xFF9E9E9E), // 底色
      ), // 圆角度
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/tuijian.jpg',
                  width: 45.0,
                  height: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    '每日推荐',
                    style:
                        TextStyle(fontSize: 12.0, color: Colors.grey.shade600),
                  ),
                )
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/gedan.jpg',
                  width: 45.0,
                  height: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    '歌单',
                    style:
                        TextStyle(fontSize: 12.0, color: Colors.grey.shade600),
                  ),
                )
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/paihang.jpg',
                  width: 45.0,
                  height: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    '排行榜',
                    style:
                        TextStyle(fontSize: 12.0, color: Colors.grey.shade600),
                  ),
                )
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/diantai.jpg',
                  width: 45.0,
                  height: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    '电台',
                    style:
                        TextStyle(fontSize: 12.0, color: Colors.grey.shade600),
                  ),
                )
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/zhibo.jpg',
                  width: 45.0,
                  height: 45.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    '直播',
                    style:
                        TextStyle(fontSize: 12.0, color: Colors.grey.shade600),
                  ),
                )
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
