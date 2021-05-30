import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'player/PlayingControls.dart';
import 'player/PositionSeekWidget.dart';
import 'player/SongsSelector.dart';

void main() {
  AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
    print(notification.audioId);
    return true;
  });

  runApp(
    NeumorphicTheme(
      theme: NeumorphicThemeData(
        intensity: 0.8,
        lightSource: LightSource.topLeft,
      ),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final audios = <Audio>[
    //Audio.network(
    //  'https://d14nt81hc5bide.cloudfront.net/U7ZRzzHfk8pvmW28sziKKPzK',
    //  metas: Metas(
    //    id: 'Invalid',
    //    title: 'Invalid',
    //    artist: 'Florent Champigny',
    //    album: 'OnlineAlbum',
    //    image: MetasImage.network(
    //        'https://image.shutterstock.com/image-vector/pop-music-text-art-colorful-600w-515538502.jpg'),
    //  ),
    //),
    Audio(
      'assets/audios/Hadeseh.mp3',
      metas: Metas(
        id: 'Hadeseh',
        title: 'حادثه',
        artist: 'داریوش',
        album: 'نازنین',
        // image: MetasImage.network('https://www.google.com')
        image: MetasImage.asset('assets/images/Hadeseh.jpg'),

      ),
    ),
    Audio(
      'assets/audios/ParandeMohajer.mp3',
      //playSpeed: 2.0,
      metas: Metas(
        id: 'ParandeMohajer',
        title: 'پرنده مهاجر',
        artist: 'داریوش',
        album: 'پرنده مهاجر',
        image: MetasImage.asset('assets/images/ParandeMohajer.jpg'),
      ),
    ),
    Audio(
      'assets/audios/EyEshgh.mp3',
      metas: Metas(
        id: 'EyEshgh',
        title: 'ای عشق',
        artist: 'داریوش',
        album: 'به من نگو دوست دارم',
        image: MetasImage.asset('assets/images/EyEshgh.jpg'),
      ),
    ),
    Audio(
      'assets/audios/EyKeBiTo.mp3',
      metas: Metas(
        id: 'EyKeBiTo',
        title: 'ای که بی تو',
        artist: 'داریوش',
        album: 'چشم من',
        image: MetasImage.asset('assets/images/EyKeBiTo.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Ejazeh.mp3',
      metas: Metas(
        id: 'Ejazeh',
        title: 'اجازه',
        artist: 'داریوش',
        album: 'فریاد زیر آب',
        image: MetasImage.asset('assets/images/Ejazeh.jpg'),
      ),
    ),
    Audio(
      'assets/audios/GoleBaroonZadhe.mp3',
      metas: Metas(
        id: 'GoleBaroonZadhe',
        title: 'گل بارون زده',
        artist: 'داریوش',
        album: 'شقایق',
        image: MetasImage.asset('assets/images/GoleBaroonZadhe.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Yavar.mp3',
      metas: Metas(
        id: 'Yavar',
        title: 'یاور',
        artist: 'داریوش',
        album: 'شقایق',
        image: MetasImage.asset('assets/images/Yavar.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Saghayegh.mp3',
      metas: Metas(
        id: 'Saghayegh',
        title: 'شقایق',
        artist: 'داریوش',
        album: 'شقایق',
        image: MetasImage.asset('assets/images/Saghayegh.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Zendooni.mp3',
      metas: Metas(
        id: 'Zendooni',
        title: 'زندونی',
        artist: 'داریوش',
        album: 'زندونی',
        image: MetasImage.asset('assets/images/Zendooni.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Nazanin.mp3',
      metas: Metas(
        id: 'Nazanin',
        title: 'نازنین',
        artist: 'داریوش',
        album: 'نازنین',
        image: MetasImage.asset('assets/images/Nazanin.jpg'),
      ),
    ),
    Audio(
      'assets/audios/AhayMardomeDonya.mp3',
      metas: Metas(
        id: 'AhayMardomeDonya',
        title: 'آهای مردم دنیا',
        artist: 'داریوش',
        album: 'آهای مردم دنیا',
        image: MetasImage.asset('assets/images/AhayMardomeDonya.jpg'),
      ),
    ),
    Audio(
      'assets/audios/PandeHafez.mp3',
      metas: Metas(
        id: 'PandeHafez',
        title: 'پند حافظ',
        artist: 'داریوش',
        album: 'همصدا',
        image: MetasImage.asset('assets/images/PandeHafez.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Masloob.mp3',
      metas: Metas(
        id: 'Masloob',
        title: 'مصلوب',
        artist: 'داریوش',
        album: 'به من نگو',
        image: MetasImage.asset('assets/images/Masloob.jpg'),
      ),
    ),
    Audio(
      'assets/audios/BeManNago.mp3',
      metas: Metas(
        id: 'Masloob',
        title: 'به من نگو',
        artist: 'داریوش',
        album: 'به من نگو',
        image: MetasImage.asset('assets/images/BeManNago.jpg'),
      ),
    ),
    Audio(
      'assets/audios/BalayeNey.mp3',
      metas: Metas(
        id: 'BalayeNey',
        title: 'بالای نی',
        artist: 'داریوش',
        album: 'سفره سین',
        image: MetasImage.asset('assets/images/BalayeNey.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Nisti.mp3',
      metas: Metas(
        id: 'Nisti',
        title: 'نیستی',
        artist: 'داریوش',
        album: 'نیستی',
        image: MetasImage.asset('assets/images/Nisti.jpg'),
      ),
    ),
    Audio(
      'assets/audios/RooezeMabada.mp3',
      metas: Metas(
        id: 'RooezeMabada',
        title: 'روز مبادا',
        artist: 'داریوش',
        album: 'امان از',
        image: MetasImage.asset('assets/images/RooezeMabada.jpg'),
      ),
    ),
    Audio(
      'assets/audios/TekyeBarBaad.mp3',
      metas: Metas(
        id: 'BeKhiyalam',
        title: 'تکیه بر باد',
        artist: 'داریوش',
        album: 'آهای مردم دنیا',
        image: MetasImage.asset('assets/images/TekyeBarBaad.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Taaghat.mp3',
      metas: Metas(
        id: 'Taaghat',
        title: 'طاقت',
        artist: 'داریوش',
        album: 'آشفته بازار',
        image: MetasImage.asset('assets/images/Taaghat.jpg'),
      ),
    ),
    Audio(
      'assets/audios/KohanDyara.mp3',
      metas: Metas(
        id: 'KohanDyara',
        title: 'کهن دیارا',
        artist: 'داریوش',
        album: 'گل بیتا',
        image: MetasImage.asset('assets/images/KohanDyara.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Mosabeb.mp3',
      metas: Metas(
        id: 'Mosabeb',
        title: 'مسبب',
        artist: 'داریوش',
        album: 'مسبب',
        image: MetasImage.asset('assets/images/Mosabeb.jpg'),
      ),
    ),
    Audio(
      'assets/audios/ShamEMahtab.mp3',
      metas: Metas(
        id: 'ShamEMahtab',
        title: 'شام مهتاب',
        artist: 'داریوش',
        album: 'گل بیتا',
        image: MetasImage.asset('assets/images/ShamEMahtab.jpg'),
      ),
    ),
    Audio(
      'assets/audios/GholamGhamar.mp3',
      metas: Metas(
        id: 'GholamGhamar',
        title: 'غلام قمر',
        artist: 'داریوش',
        album: 'رومی',
        image: MetasImage.asset('assets/images/GholamGhamar.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Chakavak.mp3',
      metas: Metas(
        id: 'Chakavak',
        title: 'چکاوک',
        artist: 'داریوش',
        album: 'راه من',
        image: MetasImage.asset('assets/images/Chakavak.jpg'),
      ),
    ),
    Audio(
      'assets/audios/LabeDarya.mp3',
      metas: Metas(
        id: 'LabeDarya',
        title: 'لب دریا',
        artist: 'داریوش',
        album: 'رازقی',
        image: MetasImage.asset('assets/images/LabeDarya.jpg'),
      ),
    ),
    Audio(
      'assets/audios/RahgozareOmr.mp3',
      metas: Metas(
        id: 'Rahgozar',
        title: 'رهگذار عمر',
        artist: 'داریوش',
        album: 'نفرین نامه',
        image: MetasImage.asset('assets/images/RahgozareOmr.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Sale2000.mp3',
      metas: Metas(
        id: 'Sale2000',
        title: 'سال 2000',
        artist: 'داریوش',
        album: 'سال 2000',
        image: MetasImage.asset('assets/images/Sale2000.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Ayenhe.mp3',
      metas: Metas(
        id: 'Ayenhe',
        title: 'آینه',
        artist: 'داریوش',
        album: 'آهای مردم دنیا',
        image: MetasImage.asset('assets/images/Ayenhe.jpg'),
      ),
    ),
    Audio(
      'assets/audios/KhorshidKhanoom.mp3',
      metas: Metas(
        id: 'SoroudeAfarinesh',
        title: 'خورشید خانوم',
        artist: 'داریوش',
        album: 'فریاد زیر آب',
        image: MetasImage.asset('assets/images/KhorshidKhanoom.jpg'),
      ),
    ),
    Audio(
      'assets/audios/SoroudeAfarinesh.mp3',
      metas: Metas(
        id: 'SoroudeAfarinesh',
        title: 'سرودآفرینش',
        artist: 'داریوش',
        album: 'گل بیتا',
        image: MetasImage.asset('assets/images/SoroudeAfarinesh.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Vatan.mp3',
      metas: Metas(
        id: 'Vatan',
        title: 'وطن',
        artist: 'داریوش',
        album: 'سال 2000',
        image: MetasImage.asset('assets/images/Vatan.jpg'),
      ),
    ),
    Audio(
      'assets/audios/Natarsoon.mp3',
      metas: Metas(
        id: 'Natarsoon',
        title: 'نترسون',
        artist: 'داریوش',
        album: 'رازقی',
        image: MetasImage.asset('assets/images/Natarsoon.jpg'),
      ),
    ),
    Audio(
      'assets/audios/DonyayeInRoozayeMan.mp3',
      metas: Metas(
        id: 'DonyayeInRoozayeMan',
        title: 'دنیای این روزای من',
        artist: 'داریوش',
        album: 'دنیای این روزای من',
        image: MetasImage.asset('assets/images/DonyayeInRoozayeMan.jpg'),
      ),
    ),
    Audio(
      'assets/audios/DeleMan.mp3',
      metas: Metas(
        id: 'DeleMan',
        title: 'دل من',
        artist: 'داریوش',
        album: 'آهای مردم دنیا',
        image: MetasImage.asset('assets/images/DeleMan.jpg'),
      ),
    ),
    Audio(
      'assets/audios/TangeGhoroobeh.mp3',
      metas: Metas(
        id: 'TangeGhoroobeh',
        title: 'تنگ غروبه',
        artist: 'داریوش',
        album: 'سال 2000',
        image: MetasImage.asset('assets/images/TangeGhoroobeh.jpg'),
      ),
    ),
    Audio(
      'assets/audios/DeklamehKamal.mp3',
      metas: Metas(
        id: 'DeklamehGohar',
        title: 'کمال (دکلمه)',
        artist: 'داریوش',
        album: 'رازقی',
        image: MetasImage.asset('assets/images/DeklamehKamal.jpg'),
      ),
    ),




  ];


  //final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  AssetsAudioPlayer get _assetsAudioPlayer => AssetsAudioPlayer.withId('music');
  final List<StreamSubscription> _subscriptions = [];

  @override
  void initState() {
    super.initState();
    //_subscriptions.add(_assetsAudioPlayer.playlistFinished.listen((data) {
    //  print('finished : $data');
    //}));
    //openPlayer();
    _subscriptions.add(_assetsAudioPlayer.playlistAudioFinished.listen((data) {
      print('playlistAudioFinished : $data');
    }));
    _subscriptions.add(_assetsAudioPlayer.audioSessionId.listen((sessionId) {
      print('audioSessionId : $sessionId');
    }));
    _subscriptions
        .add(AssetsAudioPlayer.addNotificationOpenAction((notification) {
      return false;
    }));
    openPlayer();
  }

  void openPlayer() async {
    await _assetsAudioPlayer.open(
      Playlist(audios: audios, startIndex: 0),
      showNotification: true,
      autoStart: false,
    );
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    print('dispose');
    super.dispose();
  }

  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) => element.path == fromPath);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: NeumorphicTheme.baseColor(context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 48.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      _assetsAudioPlayer.builderCurrent(
                        builder: (BuildContext context, Playing playing) {
                          final myAudio =
                          find(audios, playing.audio.assetAudioPath);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                depth: 8,
                                surfaceIntensity: 1,
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.circle(),
                              ),
                              child: myAudio.metas.image?.path == null
                                  ? const SizedBox()
                                  : myAudio.metas.image?.type ==
                                  ImageType.network
                                  ? Image.network(
                                myAudio.metas.image!.path,
                                height: 150,
                                width: 150,
                                fit: BoxFit.contain,
                              )
                                  : Image.asset(
                                myAudio.metas.image!.path,
                                height: 150,
                                width: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: NeumorphicButton(
                          style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.circle(),
                          ),
                          padding: EdgeInsets.all(18),
                          margin: EdgeInsets.all(18),
                          onPressed: () {
                            AssetsAudioPlayer.playAndForget(
                                Audio('assets/audios/horn.mp3'));
                          },
                          child: Icon(
                            Icons.add_alert,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _assetsAudioPlayer.builderCurrent(
                      builder: (context, Playing? playing) {
                        return Column(
                          children: <Widget>[
                            _assetsAudioPlayer.builderLoopMode(
                              builder: (context, loopMode) {
                                return PlayerBuilder.isPlaying(
                                    player: _assetsAudioPlayer,
                                    builder: (context, isPlaying) {
                                      return PlayingControls(
                                        loopMode: loopMode,
                                        isPlaying: isPlaying,
                                        isPlaylist: true,
                                        onStop: () {
                                          _assetsAudioPlayer.stop();
                                        },
                                        toggleLoop: () {
                                          _assetsAudioPlayer.toggleLoop();
                                        },
                                        onPlay: () {
                                          _assetsAudioPlayer.playOrPause();
                                        },
                                        onNext: () {
                                          //_assetsAudioPlayer.forward(Duration(seconds: 10));
                                          _assetsAudioPlayer.next(keepLoopMode: true
                                            /*keepLoopMode: false*/);
                                        },
                                        onPrevious: () {
                                          _assetsAudioPlayer.previous(
                                            /*keepLoopMode: false*/);
                                        },
                                      );
                                    });
                              },
                            ),
                            _assetsAudioPlayer.builderRealtimePlayingInfos(
                                builder: (context, RealtimePlayingInfos? infos) {
                                  if (infos == null) {
                                    return SizedBox();
                                  }
                                  //print('infos: $infos');
                                  return Column(
                                    children: [
                                      PositionSeekWidget(
                                        currentPosition: infos.currentPosition,
                                        duration: infos.duration,
                                        seekTo: (to) {
                                          _assetsAudioPlayer.seek(to);
                                        },
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          NeumorphicButton(
                                            onPressed: () {
                                              _assetsAudioPlayer
                                                  .seekBy(Duration(seconds: -10));
                                            },
                                            child: Text('-10'),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          NeumorphicButton(
                                            onPressed: () {
                                              _assetsAudioPlayer
                                                  .seekBy(Duration(seconds: 10));
                                            },
                                            child: Text('+10'),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                }),
                          ],
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  _assetsAudioPlayer.builderCurrent(
                      builder: (BuildContext context, Playing? playing) {
                        return SongsSelector(
                          audios: audios,
                          onPlaylistSelected: (myAudios) {
                            _assetsAudioPlayer.open(
                              Playlist(audios: myAudios),
                              showNotification: true,
                              headPhoneStrategy:
                              HeadPhoneStrategy.pauseOnUnplugPlayOnPlug,
                              audioFocusStrategy: AudioFocusStrategy.request(
                                  resumeAfterInterruption: true),
                            );
                          },
                          onSelected: (myAudio) async {
                            try {
                              await _assetsAudioPlayer.open(
                                myAudio,
                                autoStart: true,
                                showNotification: true,
                                playInBackground: PlayInBackground.enabled,
                                audioFocusStrategy: AudioFocusStrategy.request(
                                    resumeAfterInterruption: true,
                                    resumeOthersPlayersAfterDone: true),
                                headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplug,
                                notificationSettings: NotificationSettings(
                                  //seekBarEnabled: false,
                                  //stopEnabled: true,
                                  //customStopAction: (player){
                                  //  player.stop();
                                  //}
                                  //prevEnabled: false,
                                  //customNextAction: (player) {
                                  //  print('next');
                                  //}
                                  //customStopIcon: AndroidResDrawable(name: 'ic_stop_custom'),
                                  //customPauseIcon: AndroidResDrawable(name:'ic_pause_custom'),
                                  //customPlayIcon: AndroidResDrawable(name:'ic_play_custom'),
                                ),
                              );
                            } catch (e) {
                              print(e);
                            }
                          },
                          playing: playing,
                        );
                      }),
                  /*
                  PlayerBuilder.volume(
                      player: _assetsAudioPlayer,
                      builder: (context, volume) {
                        return VolumeSelector(
                          volume: volume,
                          onChange: (v) {
                            _assetsAudioPlayer.setVolume(v);
                          },
                        );
                      }),
                   */
                  /*
                  PlayerBuilder.forwardRewindSpeed(
                      player: _assetsAudioPlayer,
                      builder: (context, speed) {
                        return ForwardRewindSelector(
                          speed: speed,
                          onChange: (v) {
                            _assetsAudioPlayer.forwardOrRewind(v);
                          },
                        );
                      }),
                   */
                  /*
                  PlayerBuilder.playSpeed(
                      player: _assetsAudioPlayer,
                      builder: (context, playSpeed) {
                        return PlaySpeedSelector(
                          playSpeed: playSpeed,
                          onChange: (v) {
                            _assetsAudioPlayer.setPlaySpeed(v);
                          },
                        );
                      }),
                   */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
