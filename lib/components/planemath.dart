import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:planemath/components/airplane.dart';
import 'package:planemath/components/level.dart';
import 'package:planemath/constants/default.constants.dart';

class Planemath extends FlameGame with HasKeyboardHandlerComponents {
  Planemath({this.isMobile = false}) : super();
  final bool isMobile;

  bool playSounds = kDebugMode ? false : true;
  double soundVolume = 0.4;

  late CameraComponent cam;

  Color backgroundColor() => Color.fromARGB(255, 86, 204, 217);

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();

    _loadLevel();

    return super.onLoad();
  }

  void _loadLevel() {
    Future.delayed(const Duration(seconds: 2), () {
      Level world = Level(
        player: Airplane(),
      );

      cam = CameraComponent.withFixedResolution(
          world: world, width: 640, height: 360);

      cam.viewfinder.anchor = Anchor.topLeft;

      addAll([cam, world]);
    });
  }

  
}
