# Dokumentáció #

docker-compose.yaml fájlon belül a "Context" és a "Dockerfile" áthelyezésre került.

Új helye:

    services: 
        app: 
            build:
              context: .
              dockerfile: Dockerfile