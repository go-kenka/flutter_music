import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_music/api/models/play_list_detail_entity.dart';
import 'package:flutter_music/api/stores/play_list_store.dart';
import 'package:flutter_music/ui/pages/home/play_widget.dart';
import 'package:mobx/mobx.dart';

class BottomPlayWidget extends StatefulWidget {
  BottomPlayWidget({Key key}) : super(key: key);

  _BottomPlayWidgetState createState() => _BottomPlayWidgetState();
}

class _BottomPlayWidgetState extends State<BottomPlayWidget> {
  PlayListStore _store = PlayListStore();

  @override
  void initState() {
    super.initState();
    _store.load('10', 'new');
  }

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) {
          final future = _store.listFuture;
          if (future == null) {
            return Container(
              height: 50.0,
              padding: EdgeInsets.only(
                top: 2.5,
                bottom: 2.5,
                left: 8.0,
                right: 8.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey.shade200, width: 0.5),
                ),
                color: Colors.white.withAlpha(100), // 底色
              ),
            );
          }
          switch (future.status) {
            case FutureStatus.pending:
            case FutureStatus.rejected:
              return Container(
                height: 50.0,
                padding: EdgeInsets.only(
                  top: 2.5,
                  bottom: 2.5,
                  left: 8.0,
                  right: 8.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade200, width: 0.5),
                  ),
                  color: Colors.white.withAlpha(100), // 底色
                ),
              );
            case FutureStatus.fulfilled:
              final List<Tracks> items = future.result;
              return Container(
                height: 50.0,
                child: PageView.builder(
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 50.0,
                      padding: EdgeInsets.only(
                        top: 2.5,
                        bottom: 2.5,
                        left: 8.0,
                        right: 8.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                              color: Colors.grey.shade200, width: 0.5),
                        ),
                        color: Colors.white.withAlpha(100), // 底色
                      ), // 圆角度
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 45.0,
                            height: 45.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(45.0),
                              child: Image.network(
                                items[index].al.picUrl,
                                width: 45.0,
                                height: 45.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      items[index].name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '横划可以切换上下首哦',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 16.0),
                                  child: PlayWidget(
                                    id: items[index].id.toString(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(Icons.favorite_border),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  physics: PageScrollPhysics(parent: BouncingScrollPhysics()),
                ),
              );
              break;
            default:
              return Container(
                height: 50.0,
                padding: EdgeInsets.only(
                  top: 2.5,
                  bottom: 2.5,
                  left: 8.0,
                  right: 8.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade200, width: 0.5),
                  ),
                  color: Colors.white.withAlpha(100), // 底色
                ),
              );
          }
        },
      );
}
