# Dokumentáció #

## Feladat

Fejlesztő környezet kiépítése, hogy a fejlesztők számára minnél kevesebb lépésből elérhető legyen a felállított szoftver architektúra.

## Megvalósítás

Első sorban Docker-t használtam konténerizált fejlesztői környezetnek. Adatbázisnak MySQL 8.0 fut, melyhez a már kezdő projektben is szereplő db.sql inicializáló query-t társítottam.


Adatbázis:
* Felhasználónév: iet
* Jelsző: password
* Adatbázis: iet
* Port: 3306

Alkalmazás:
* URL: http://localhost
* Basil URL: http://localhost/basil


## Eredmány

Pusztán a következő paranccsal felépítésre kerül a teljes fejlesztői környezet, beleértve a mellékelt adatbázis struktúrát is:

```
docker-compose up
```