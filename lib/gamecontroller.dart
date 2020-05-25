import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flappybirdclone/components/background.dart';
import 'package:flutter/widgets.dart';
import 'package:flappybirdclone/components/player.dart';

class GameController extends Game{

  Size screenSize;
  double tileSize;
  Background bg;
  Player p1;


  


  GameController(){
    initialize();
     
  } 

  void initialize() async{
    resize(await Flame.util.initialDimensions());
    bg = Background(this);
    p1 = Player(this);

  }



  @override
  void render(Canvas canvas) {
    bg.render(canvas);
    p1.render(canvas);
  }

  @override
  void update(double t) {

  }

  void resize(Size size){
    screenSize = size;
    tileSize = screenSize.width/9;
  }

  void onTapDown(TapDownDetails d){
    p1.onTapDown();
  }

}