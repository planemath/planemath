# planemath

Educational math game build in flutter

## Project Rules

     Dev FLow: 
      - Atribuição de Issue
      - Revisão da Issue pré-execução
      - Revisão do resultado da Issue

    Branches:
      - Identificação: ´[0000 - NNNN - TYPE]´
          * Número da Issue
          * Nome da Branch
          * Tipo de Branch

    Pull Requests:
      -  Identificação: `[0000 - CONTENT]`
          * Número da Issue
          * Descritivo do Pull Request


## Deploy process

### WEB

1. `flutter build web --base-href=/frontend/ --web-renderer canvaskit --no-tree-shake-icons --release`

2. `cp -r build/web/ ./docs/`

3. `git add .`

4. `git commit -m "deploy"`

5. `git push origin <branch>`

6. Open pull request to master
