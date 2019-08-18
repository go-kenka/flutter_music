import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/ui/pages/cloud/index.dart';
import 'package:flutter_music/ui/pages/home/bottom_play_widget.dart';
import 'package:flutter_music/ui/pages/home/index.dart';
import 'package:flutter_music/ui/pages/me/index.dart';
import 'package:flutter_music/ui/pages/move/index.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          title: Center(
            child: Container(
              width: ScreenUtil.getInstance().screenWidth * 0.5,
              child: TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey.shade400,
                unselectedLabelStyle: TextStyle(fontSize: 16.0),
                labelPadding: EdgeInsets.only(left: 2.0, right: 2.0),
                labelColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
                tabs: [
                  Tab(
                    text: "我的",
                  ),
                  Tab(
                    text: "发现",
                  ),
                  Tab(
                    text: "云村",
                  ),
                  Tab(
                    text: "视频",
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            MyPage(),
            HomePage(),
            CloudPage(),
            MovePage(),
          ],
        ),
        bottomNavigationBar: BottomPlayWidget(),
      ),
    );
  }
}
