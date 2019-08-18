import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_music/api/models/play_list_detail_entity.dart';
import 'package:flutter_music/api/models/top_album_entity.dart';
import 'package:flutter_music/api/stores/top_album_store.dart';
import 'package:flutter_music/api/stores/top_list_store.dart';
import 'package:flutter_music/util/map.dart';
import 'package:mobx/mobx.dart';

class NewGridWidget extends StatefulWidget {
  NewGridWidget({Key key}) : super(key: key);

  _NewGridWidgetState createState() => _NewGridWidgetState();
}

class _NewGridWidgetState extends State<NewGridWidget> {
  final _albumStore = TopAlbumStore();
  final _listStore = TopListStore();

  TextStyle _select = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  TextStyle _unSelect = TextStyle(fontSize: 12.0, color: Colors.grey.shade400);

  bool _status = true;

  @override
  void initState() {
    super.initState();
    _albumStore.load();
    _listStore.load("0");
  }

  @override
  Widget build(BuildContext context) {
    final width = ScreenUtil.getInstance().screenWidth;
    return Container(
      width: width,
      height: 220.0,
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
      child: Column(
        children: <Widget>[
          // 最上边的推荐歌单标题和歌单广场入口
          Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: taggle,
                      child: Text(
                        '新碟',
                        style: _status ? _select : _unSelect,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                        '|',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: taggle,
                      child: Text(
                        '新歌',
                        style: _status ? _unSelect : _select,
                      ),
                    ),
                  ],
                ),
                flex: 1,
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
                      color: Colors.grey.shade400, width: 0.5), // 边色与边宽度
                  shape: BoxShape.rectangle, // 默认值也是矩形
                  borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                ),
                child: Text(
                  '更多新碟',
                  style: TextStyle(
                    fontSize: 10.0,
                    backgroundColor: Colors.white,
                    color: Colors.grey.shade400,
                  ),
                ),
              )
            ],
          ),
          Observer(
            builder: (_) {
              if (_status) {
                final future = _albumStore.albumsFuture;
                switch (future.status) {
                  case FutureStatus.pending:
                    return buildEmpty();

                  case FutureStatus.rejected:
                    return buildEmpty();

                  case FutureStatus.fulfilled:
                    final List<Albums> items = future.result;
                    final width = ScreenUtil.getInstance().screenWidth;
                    return Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Row(
                        children: map<Widget>(items, (index, Albums album) {
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
                                          album.blurPicUrl,
                                          width: width / 3 - 20,
                                          enableLoadState: false,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(
                                            top: 8.0,
                                            bottom: 2.0,
                                            left: 1.0,
                                            right: 1.0),
                                        child: Text(
                                          album.name,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.grey.shade800,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(
                                            left: 1.0, right: 1.0),
                                        child: Text(
                                          album.artist.name,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.grey.shade400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              flex: 1,
                            );
                          });
                        }),
                      ),
                    );
                }
              } else {
                final future = _listStore.listFuture;
                switch (future.status) {
                  case FutureStatus.pending:
                    return buildEmpty();

                  case FutureStatus.rejected:
                    return buildEmpty();

                  case FutureStatus.fulfilled:
                    final List<Tracks> items = future.result;
                    return Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Row(
                        children: map<Widget>(
                          items.sublist(0, 3),
                          (index, Tracks tracks) {
                            return Builder(
                              builder: (BuildContext context) {
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
                                              tracks.al.picUrl,
                                              enableLoadState: false,
                                              width: width / 3 - 20,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                                top: 8.0,
                                                bottom: 2.0,
                                                left: 1.0,
                                                right: 1.0),
                                            child: Text(
                                              tracks.name,
                                              style: TextStyle(
                                                fontSize: 10.0,
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                                left: 1.0, right: 1.0),
                                            child: Text(
                                              tracks.ar[0].name,
                                              style: TextStyle(
                                                fontSize: 10.0,
                                                color: Colors.grey.shade400,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Positioned(
                                        top: 75.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withAlpha(200),
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.red,
                                            size: 16.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  flex: 1,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    );
                }
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildEmpty() {
    final width = ScreenUtil.getInstance().screenWidth;
    return Padding(
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
    );
  }

  taggle() {
    setState(() {
      _status = !_status;
    });
  }
}
