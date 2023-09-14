# planemath

Educational math game build in flutter

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Deploy process

### WEB

1. `flutter build web --base-href=/frontend/ --web-renderer canvaskit --no-tree-shake-icons --release`

2. `cp -r build/web/ ./docs/`

3. `git add .`

4. `git commit -m "deploy"`

5. `git push origin <branch>`

6. Open pull request to master