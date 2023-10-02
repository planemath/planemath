import 'dart:ui';

class DefaultConstants {
  static DefaultConstants? _instance;
  // Avoid self instance
  DefaultConstants._();
  static DefaultConstants get instance => _instance ??= DefaultConstants._();

  static const String appName = 'Planemath';
  static String version = '0.0.1';

  static double get width => 640;
  static double get height => 360;
  static double get tileSize => 16;

}

class DefaultColors {

  static Color get background => const Color.fromARGB(255, 86, 204, 217);
}
