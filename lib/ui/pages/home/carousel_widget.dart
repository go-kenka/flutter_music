import 'package:carousel_slider/carousel_slider.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_music/api/models/banner_entity.dart';
import 'package:flutter_music/api/stores/banner_store.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_music/util/map.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CarouselWidget extends StatefulWidget {
  CarouselWidget({Key key}) : super(key: key);

  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int _current = 0;
  final _banner = BannerStore();

  @override
  void initState() {
    super.initState();
    _banner.load();
  }

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) {
          final future = _banner.bannersFuture;
          switch (future.status) {
            case FutureStatus.pending:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitRotatingCircle(
                    color: Colors.red,
                    size: 25.0,
                  ),
                  Text('Loading banners...'),
                ],
              );

            case FutureStatus.rejected:
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Failed to load items.',
                    style: TextStyle(color: Colors.red),
                  ),
                  RaisedButton(
                    child: const Text('Tap to try again'),
                    onPressed: () {},
                  )
                ],
              );

            case FutureStatus.fulfilled:
              final List<Banners> items = future.result;
              return Container(
                padding: EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    CarouselSlider(
                      height: 150.0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      items: map<Widget>(
                        items,
                        (index, Banners banner) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                margin: EdgeInsets.all(5.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      ExtendedImage.network(
                                        banner.pic,
                                        cache: true,
                                        width: ScreenUtil.getInstance()
                                            .screenWidth,
                                        height: 150.0,
                                        enableLoadState: false,
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        bottom: 0.0,
                                        right: 0.0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(8.0),
                                            topLeft: Radius.circular(8.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Container(
                                            color: banner.titleColor == 'red'
                                                ? Colors.redAccent
                                                : Colors.lightBlue,
                                            padding: EdgeInsets.only(
                                              left: 4.0,
                                              right: 4.0,
                                              top: 2.0,
                                              bottom: 2.0,
                                            ),
                                            child: Text(
                                              banner.typeTitle,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 120.0,
                      left: 0.0,
                      child: Container(
                        width: ScreenUtil.getInstance().screenWidth,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: map<Widget>(
                              items,
                              (index, banner) {
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == index
                                        ? Color.fromRGBO(255, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
          }
        },
      );
}
