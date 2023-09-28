import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:planemath/components/airplane.dart';

class Level extends World {
  final Airplane player;
  final String levelName;
  late TiledComponent level;

  Level({required this.player, this.levelName = "level_01"});

  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load("$levelName.tmx", Vector2.all(16));
    _scrollingBackground();
    add(level);
    return super.onLoad();
  }

  void _scrollingBackground() {
    final backgroundLayer = level.tileMap.getLayer("background");

    if (backgroundLayer != null) {
      // final background = background.position = Vector2(0, 0);
      // add(background);
    }
  }
}
