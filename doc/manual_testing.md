# Csapat1234

## API-k kilistázása
Győződjünk meg róla, hogy még nincsenek API-k hozzáadva

```shell
curl localhost/basil
```

## Felhasználó felvétele
API hozzáadásához először létre kell hozni egy felhasználót
```shell
./scripts/create_user.sh
```

Győződjünk meg róla, hogy a felhasználót sikeresen felvettük
```shell
curl http://localhost/basil/users/iet/apis
```

## API hozzáadása
Hozzunk létre egy API-t
```shell
./scripts/create_api.sh
```

Győződjünk meg róla, hogy az API-t sikeresen felvettük
```shell
curl http://localhost/basil/users/iet/apis
```

## API törlése
Töröljük a létrehozott API-t
```shell
curl -v -u iet:password -X DELETE "http://localhost/basil/<token>"
```

Győződjünk meg róla, hogy az API-t sikeresen töröltük
```shell
curl http://localhost/basil/users/iet/apis
```

## API újra hozzáadása
Hozzunk létre egy API-t
```shell
./scripts/create_api.sh
```

Győződjünk meg róla, hogy az API-t sikeresen felvettük
```shell
curl http://localhost/basil/users/iet/apis
```

## API megvizsgálása
Vizsgáljuk meg az API-t
```shell
curl -v http://localhost/basil/<token>
```

Egy hasonló részt kell tartalmaznia a válasznak
```shell
< X-Basil-Api: http://localhost/basil/<token>/api
< X-Basil-Alias: http://localhost/basil/<token>/alias
< X-Basil-Spec: http://localhost/basil/<token>/spec
< X-Basil-Direct: http://localhost/basil/<token>/direct
< X-Basil-View: http://localhost/basil/<token>/view
< X-Basil-Docs: http://localhost/basil/<token>/docs
< X-Basil-Swagger: http://localhost/basil/<token>/api-docs
< X-Basil-Creator: iet
```

## Query ellenőrzése
Ellenőrizzük, hogy a megfelelő query került elmentésre
```shell
curl http://localhost/basil/<token>/spec
```

## Példa lekérdezés
Csináljunk egy példa lekérdezést
```shell
curl http://localhost/basil/<token>/api?entity="http://dbpedia.org/resource/Rome"
```

## Nézet hozzáadása
Állítsuk be a nézet sablonját
```shell
./scripts/set_list.sh <token>
```

Listázzuk ki a lekérdezés eredményét a beállított sablon alapján
```shell
curl http://localhost/basil/<token>/api.list?entity="http://dbpedia.org/resource/Rome"
```

## Dokumentáció hozzáadása
Állítsuk be a dokumentációt
```shell
./scripts/set_docs.sh <token>
```