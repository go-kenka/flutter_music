import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_music/api/models/personalized_entity.dart';
import 'package:flutter_music/util/map.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_music/api/stores/personalized_store.dart';

class SongGridWidget extends StatefulWidget {
  SongGridWidget({Key key}) : super(key: key);

  _SongGridWidgetState createState() => _SongGridWidgetState();
}

class _SongGridWidgetState extends State<SongGridWidget> {
  final _store = PersonalizedStore();

  @override
  void initState() {
    super.initState();
    _store.load();
  }

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) {
          final future = _store.personalizedFuture;
          switch (future.status) {
            case FutureStatus.pending:
              return buildEmpty();

            case FutureStatus.rejected:
              return buildEmpty();

            case FutureStatus.fulfilled:
              final List<Personalized> items = future.result;
              final width = ScreenUtil.getInstance().screenWidth;
              return Container(
                width: width,
                height: 400.0,
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                child: Column(
                  children: <Widget>[
                    // 最上边的推荐歌单标题和歌单广场入口
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '推荐歌单',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 2.0,
                            bottom: 2.0,
                            left: 8.0,
                            right: 8.0,
                          ),
                          decoration: BoxDecoration(
                            border: new Border.all(
                                color: Colors.grey.shade400,
                                width: 0.5), // 边色与边宽度
                            shape: BoxShape.rectangle, // 默认值也是矩形
                            borderRadius:
                                new BorderRadius.circular((20.0)), // 圆角度
                          ),
                          child: Text(
                            '歌单广场',
                            style: TextStyle(
                              fontSize: 10.0,
                              backgroundColor: Colors.white,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: map<Widget>(items.sublist(0, 3),
                              (index, Personalized songs) {
                            return Builder(builder: (BuildContext context) {
                              return Expanded(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(4.0),
                                          ),
                                          child: ExtendedImage.network(
                                            songs.picUrl,
                                            enableLoadState: false,
                                            width: width / 3 - 20,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 8.0,
                                              bottom: 8.0,
                                              left: 1.0,
                                              right: 1.0),
                                          child: Text(
                                            songs.name,
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.grey.shade800,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Positioned(
                                      right: 10,
                                      top: 0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 14.0,
                                          ),
                                          Text(
                                            getPlayCount(songs.playCount),
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                flex: 1,
                              );
                            });
                          }),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: map<Widget>(items.sublist(6, 9),
                              (index, Personalized songs) {
                            return Builder(builder: (BuildContext context) {
                              return Expanded(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(4.0),
                                          ),
                                          child: ExtendedImage.network(
                                            songs.picUrl,
                                            enableLoadState: false,
                                            width: width / 3 - 20,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 8.0,
                                              bottom: 8.0,
                                              left: 1.0,
                                              right: 1.0),
                                          child: Text(
                                            songs.name,
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.grey.shade800,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Positioned(
                                      right: 10,
                                      top: 0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 14.0,
                                          ),
                                          Text(
                                            getPlayCount(songs.playCount),
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                flex: 1,
                              );
                            });
                          }),
                        ),
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              );
          }
        },
      );

  Widget buildEmpty() {
    final width = ScreenUtil.getInstance().screenWidth;
    return Container(
      width: width,
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Row(
              children: map<Widget>(
                [0, 1, 2],
                (index, data) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                            child: Container(
                              width: width / 3 - 20,
                              height: 100,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                        flex: 1,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Row(
              children: map<Widget>(
                [0, 1, 2],
                (index, data) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                            child: Container(
                              width: width / 3 - 20,
                              height: 100,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                        flex: 1,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// getPlayCount
  /// 获取播放量
  /// @param playCount
  /// @return 播放量
  String getPlayCount(int playCount) {
    if (playCount < 1000) {
      return playCount.toString();
    }

    if (playCount > 1000 && playCount < 100000000) {
      return (playCount / 10000).toStringAsFixed(1) + '万';
    }
    if (playCount > 100000000) {
      return (playCount / 100000000).toStringAsFixed(1) + '亿';
    }

    return '0';
  }
}
