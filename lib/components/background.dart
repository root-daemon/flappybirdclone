import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:flappybirdclone/gamecontroller.dart';

class Background{
  final GameController gameController;
  Rect bgRect;
  Sprite bgSprite;
  
  Background(this.gameController){
    bgSprite = Sprite('bg_5.png');
    bgRect = Rect.fromLTWH(
      0, 
      gameController.screenSize.height - (gameController.tileSize * 23),
      gameController.tileSize * 9,
      gameController.tileSize * 23
    );

  }

  void render(Canvas c){
    bgSprite.renderRect(c, bgRect);
  }
}