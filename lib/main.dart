import 'package:flappybirdclone/gamecontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flame/flame.dart';



void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  Flame.images.loadAll(<String>[
    'bg_5.png',
    'flappy-bird-up.png',
    'flappy-bird-straight.png',
    'flappy-bird-down.png'
  ]);

  GameController gameController = GameController();
  runApp(gameController.widget);

  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = gameController.onTapDown;
  flameUtil.addGestureRecognizer(tapper);
}