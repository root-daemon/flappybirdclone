import 'dart:ui';
import 'package:flappybirdclone/gamecontroller.dart';
import 'package:flame/sprite.dart';
import 'package:flame/components/component.dart';

class Player{
  final GameController gameController;
  Sprite playerSprite = Sprite('flappy-bird-straight.png');
  static const size =200.0;
  var player;

  Player(this.gameController){
    final sizes = gameController.tileSize * 1.5;
    player = SpriteComponent.fromSprite(size, size, playerSprite);
    player.x = gameController.screenSize.width / 4.5 - sizes / 2;
    player.y = gameController.screenSize.height / 2 - sizes / 2;

  }
  void render(Canvas c){
    player.render(c);
  }
  void update(double t){

  }
  void onTapDown(){
    player.y = player.y - 20.0;
  }

}