import 'dart:async';

import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_music/api/models/play_song_entity.dart';
import 'package:flutter_music/api/stores/play_song_store.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_music/ui/pages/home/circle_progress_bar.dart';

enum PlayerState { stopped, playing, paused }

class PlayWidget extends StatefulWidget {
  final String id;
  PlayWidget({Key key, @required this.id}) : super(key: key);

  _PlayWidgetState createState() => _PlayWidgetState();
}

class _PlayWidgetState extends State<PlayWidget> {
  PlaySongStore _store = PlaySongStore();
  final musicServer = "https://music.163.com/song/media/outer/url?id=";

  ValueNotifier<double> _progress = ValueNotifier<double>(0.0);
  bool _isPlaying = false;
  Duration _position = Duration(seconds: 0);

  AudioPlayer audioPlayer;

  bool isMuted = false;

  StreamSubscription _positionSubscription;
  StreamSubscription _audioPlayerStateSubscription;

  @override
  void initState() {
    super.initState();
    _store.load(widget.id);
    initAudioPlayer();
  }

  @override
  void dispose() {
    _positionSubscription.cancel();
    _audioPlayerStateSubscription.cancel();
    audioPlayer.stop();
    super.dispose();
  }

  void initAudioPlayer() {
    audioPlayer = new AudioPlayer();
    _positionSubscription = audioPlayer.onAudioPositionChanged.listen((p) {
      setState(() {
        _position = p;
        _progress =
            ValueNotifier<double>(p.inSeconds / audioPlayer.duration.inSeconds);
      });
    });
    _audioPlayerStateSubscription =
        audioPlayer.onPlayerStateChanged.listen((s) {
      if (s == AudioPlayerState.PLAYING) {
        setState(() {
          _isPlaying = true;
        });
      } else if (s == AudioPlayerState.STOPPED ||
          s == AudioPlayerState.PAUSED) {
        setState(() {
          _isPlaying = false;
        });
      } else if (s == AudioPlayerState.COMPLETED) {
        setState(() {
          _isPlaying = false;
          _progress = ValueNotifier<double>(1.0);
        });
      }
    }, onError: (msg) {
      setState(() {
        _isPlaying = false;
        _progress = ValueNotifier<double>(0.0);
      });
    });
  }

  Future play(url) async {
    await audioPlayer.play(url);
    setState(() {
      _isPlaying = true;
    });

    if (_position.inSeconds > 0) {
      await audioPlayer.seek(_position.inSeconds.toDouble());
    }
  }

  Future pause() async {
    await audioPlayer.pause();
    setState(() {
      _isPlaying = false;
    });
  }

  Future stop() async {
    await audioPlayer.stop();
    setState(() {
      _isPlaying = false;
    });
  }

  Future mute(bool muted) async {
    await audioPlayer.mute(muted);
    setState(() {
      isMuted = muted;
    });
  }

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) {
          final future = _store.songsFuture;

          switch (future.status) {
            case FutureStatus.pending:
            case FutureStatus.rejected:
              return Container(
                width: 45.0,
                height: 45.0,
                child: Stack(
                  children: <Widget>[
                    CircleProgressBar(
                      radius: 14.0,
                      ringColor: Colors.grey.shade700,
                      dotColor: Colors.red,
                      dotRadius: 0.5,
                      shadowWidth: 0.5,
                      progress: _progress,
                    ),
                    Positioned(
                      top: 12.5,
                      left: 12.5,
                      child: _isPlaying
                          ? Icon(
                              Icons.pause,
                              size: 20.0,
                            )
                          : Icon(
                              Icons.play_arrow,
                              size: 20.0,
                            ),
                    ),
                  ],
                ),
              );
            case FutureStatus.fulfilled:
              final List<Data> items = future.result;
              return InkWell(
                onTap: () {
                  if (!_isPlaying) {
                    play(musicServer + items[0].id.toString() + ".mp3");
                  } else {
                    stop();
                  }
                },
                child: Container(
                  width: 45.0,
                  height: 45.0,
                  child: Stack(
                    children: <Widget>[
                      CircleProgressBar(
                        radius: 14.0,
                        ringColor: Colors.grey.shade700,
                        dotColor: Colors.red,
                        dotRadius: 0.5,
                        shadowWidth: 0.5,
                        progress: _progress,
                      ),
                      Positioned(
                        top: 12.5,
                        left: 12.5,
                        child: _isPlaying
                            ? Icon(
                                Icons.pause,
                                size: 20.0,
                              )
                            : Icon(
                                Icons.play_arrow,
                                size: 20.0,
                              ),
                      ),
                    ],
                  ),
                ),
              );
            default:
              break;
          }
        },
      );
}
