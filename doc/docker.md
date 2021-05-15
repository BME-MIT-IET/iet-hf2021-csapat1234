# Docker elkészítése
Hulej Attila - alittahu

## Feladat
A deployment-hez a Docker elkészítése volt a feladat. A Docker egy olyan container alapú platform, aminek segítségével alkalmazásokat tudunk telepíteni/megosztani.

Szükséges volt ehhez még elkészíteni egy .dockerignore fájlt is. A dockerignore a gitignore fájlhoz hasonló. Ennek a használatával meg tudjuk adni, hogy a Docker kliens mit vegyen figyelmen kívül, amikor buildel.

## Megvalósítás
A github gyökérkönyvtárában elhelyeztem a .dockerignore és Dockerfile fájlokat. A fájlok megírásához neten kerestem utána, majd hosszas utána olvasások és a szintaxis megértése után megírtam a fájlok tartalmát.

## Eredmény
### .dockerignore
Docker futtatása során megadja, hogy milyen fájlokat hagyjon figyelmen kívül.

### Dockerfile
Futtatás során megadja, hogy mit használjon (jelen esetben maven-t), melyik porton fusson a környezet és milyen entrypointot használjon. Kettő stage-ben oldottam meg. Az első stageban a fordításhoz szükséges függöségek szerepelnek, és ezek segítségével lefordítja a projektet egy .jar fileba. A második stage pedig pusztán futtatáshoz szükséges környezetet biztosítja.Az ide átmásolt .jar file a container indításával lefut.