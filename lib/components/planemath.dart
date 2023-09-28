import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:planemath/constants/default.constants.dart';

class Planemath extends FlameGame {
  Planemath({this.isMobile = false}) : super();
  final bool isMobile;

  bool playSounds = kDebugMode ? false : true;
  double soundVolume = 0.4;

  late CameraComponent camera;

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();

    return super.onLoad();
  }

  void _loadLevel() {
    
  }

  loadlevel() {
    Future.delayed(const Duration(seconds: 2), () {
      camera = CameraComponent.withFixedResolution(
        width: DefaultConstants.width,
        height: DefaultConstants.height,
      )..viewfinder.anchor = Anchor.topLeft;
    });
  }
}
