import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_music/api/models/top_album_entity.dart';
import 'package:flutter_music/api/stores/top_album_store.dart';
import 'package:flutter_music/util/map.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobx/mobx.dart';

class NewGridWidget extends StatefulWidget {
  NewGridWidget({Key key}) : super(key: key);

  _NewGridWidgetState createState() => _NewGridWidgetState();
}

class _NewGridWidgetState extends State<NewGridWidget> {
  final _store = TopAlbumStore();

  @override
  void initState() {
    super.initState();
    _store.load();
  }

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) {
          final future = _store.albumsFuture;
          switch (future.status) {
            case FutureStatus.pending:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitRotatingCircle(
                    color: Colors.red,
                    size: 25.0,
                  ),
                  Text('Loading personalized...'),
                ],
              );

            case FutureStatus.rejected:
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Failed to load personalized.',
                    style: TextStyle(color: Colors.red),
                  ),
                  RaisedButton(
                    child: const Text('Tap to try again'),
                    onPressed: () {},
                  )
                ],
              );

            case FutureStatus.fulfilled:
              final List<Albums> items = future.result;
              final width = ScreenUtil.getInstance().screenWidth;
              return Container(
                width: width,
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                child: Column(
                  children: <Widget>[
                    // 最上边的推荐歌单标题和歌单广场入口
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '新碟',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                              Text(
                                '新歌',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey.shade400,
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
                                color: Colors.grey.shade400,
                                width: 0.5), // 边色与边宽度
                            shape: BoxShape.rectangle, // 默认值也是矩形
                            borderRadius:
                                new BorderRadius.circular((20.0)), // 圆角度
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
                    Padding(
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
                    ),
                  ],
                ),
              );
          }
        },
      );
}
