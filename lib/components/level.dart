import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:planemath/components/airplane.dart';
import 'package:planemath/components/back_ground_tile.dart';
import 'package:planemath/components/buttons.dart';

class Level extends World {
  final Airplane player;
  final String levelName;
  final int levelIndex;
  late TiledComponent level;

  Level({
    required this.player,
    this.levelName = "level_01",
    this.levelIndex = 2,
  });

  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load("$levelName.tmx", Vector2.all(16));
    _scrollingBackground();
    add(level);
    _spanwObjects();
    return super.onLoad();
  }

  void _scrollingBackground() async {
    final bg = BackGroundTile(
        position: Vector2(0, 0),
        backgroundPath: "Background/sea.png",
        foregroundpPath: "Background/bg_lv$levelIndex.png");
    add(bg);
  }

  void _spanwObjects() {
    final spawnPointLayer = level.tileMap.getLayer<ObjectGroup>("spawn");
    if (spawnPointLayer != null) {
      for (final spawnPoint in spawnPointLayer.objects) {
        final spawnPointPosition = Vector2(spawnPoint.x, spawnPoint.y);
        final spawnPointType = spawnPoint.class_;
        switch (spawnPointType) {
          case "Player":
            player.position = spawnPointPosition;
            add(player);
            break;
          default:
        }
      }
    }

    final controllerLayer = level.tileMap.getLayer<ObjectGroup>("controles");
    if (controllerLayer != null) {
      for (final button in controllerLayer.objects) {
        switch (button.class_) {
          case "numbutton":
            final but = NumberButtons(
                value: button.properties.getValue<int?>("valor") ?? 0,
                position: Vector2(button.x, button.y),
                size: Vector2(button.width, button.height));
            add(but);
        }
      }
    }
  }
}
