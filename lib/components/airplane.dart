import 'dart:async';

import 'package:flame/components.dart';
import 'package:planemath/components/planemath.dart';

class Airplane extends SpriteAnimationComponent with HasGameRef<Planemath> {
  final String shipNumber;
  Airplane({this.shipNumber = '0000', Vector2? position})
      : super(position: position, size: Vector2.all(32));

  final double stepTime = 0.05;

  @override
  FutureOr<void> onLoad() {
    priority = 1;

    animation = SpriteAnimation.fromFrameData(
        game.images.fromCache("Ships/ship_$shipNumber.png"),
        SpriteAnimationData.sequenced(
            amount: 1, stepTime: stepTime, textureSize: Vector2.all(32)));

    return super.onLoad();
  }
}
