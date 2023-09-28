import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:planemath/components/planemath.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  Planemath game = Planemath();

  runApp(GameWidget(
      game: kDebugMode ? Planemath() : game,
      loadingBuilder: (context) => Center(
            child: Container(
              child: const Column(
                children: [
                  Text('Planemath'),
                  Text('Loading...'),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          )));
}
