import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';
import 'package:planemath/components/planemath.dart';

class BackGroundTile extends ParallaxComponent<Planemath> {
  final String backgroundPath;
  final String foregroundpPath;

  final double scroolSpeed = 40;

  BackGroundTile(
      {position, required this.backgroundPath, required this.foregroundpPath})
      : super(position: position, size: Vector2.all(16));
  @override
  FutureOr<void> onLoad() async {
    priority = -10;
    size = Vector2(game.size.x, game.size.y);
    parallax = await game.loadParallax([
      ParallaxImageData(backgroundPath),
      ParallaxImageData(foregroundpPath),
    ],
        baseVelocity: Vector2(0, -scroolSpeed),
        fill: LayerFill.none,
        repeat: ImageRepeat.repeatY);
    return super.onLoad();
  }
}
