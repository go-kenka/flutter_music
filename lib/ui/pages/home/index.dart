import 'package:flutter/material.dart';
import 'package:flutter_music/ui/pages/home/button_grid_widget.dart';
import 'package:flutter_music/ui/pages/home/carousel_widget.dart';
import 'package:flutter_music/ui/pages/home/new_grid_widget.dart';
import 'package:flutter_music/ui/pages/home/song_grid_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        // padding: EdgeInsets.all(16.0),
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CarouselWidget(),
                ButtonGridWidget(),
                SongGridWidget(),
                NewGridWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /**
   * 模拟下拉刷新
   */
  Future<void> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      Fluttertoast.showToast(
          msg: "已为您推荐新的个性化内容",
          gravity: ToastGravity.TOP,
          fontSize: 12.0,
          backgroundColor: Colors.black54);
    });
  }
}
