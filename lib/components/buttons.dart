import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:planemath/components/planemath.dart';

class NumberButtons extends SpriteComponent
    with TapCallbacks, HasGameRef<Planemath> {
  final int value;
  NumberButtons({
    size,
    position,
    required this.value,
  }) : super(size: size, position: position);

  @override
  FutureOr<void> onLoad() {
    sprite = Sprite(game.images.fromCache(
        "Tiles/tile_00${value <= 4 ? 19 + value : 31 + value - 5}.png"));
    return super.onLoad();
  }
}

class OperatorButton extends SpriteComponent {
  OperatorButton({size, position}) : super(size: size, position: position);
}
