--------------------------------------------------------------------------------------------------------
1.Prérequis
--------------------------------------------------------------------------------------------------------

Avant de commencer, assurez-vous d'avoir installé :

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Git](https://git-scm.com/downloads)

--------------------------------------------------------------------------------------------------------
2.Installation et lancement
--------------------------------------------------------------------------------------------------------

Pour clôner le projet avec les submodules (applications front et back) :
```bash
git clone --recursive https://github.com/1tsLin/HP-test.git
cd HP-test
```

Si vous avez déjà cloné le projet sans `--recursive`, exécutez :

```bash
git submodule update --init --recursive
```

--------------------------------------------------------------------------------------------------------
3.Lancer l'application
--------------------------------------------------------------------------------------------------------

```bash
docker-compose up --build
```

Temps estimé du premier lancement : 2-5 minutes selon votre connexion Internet.

--------------------------------------------------------------------------------------------------------
4.Accéder à l'application
--------------------------------------------------------------------------------------------------------

Une fois tous les services démarrés, ouvrez votre navigateur :

- Frontend (Interface web) : [http://localhost:4200](http://localhost:4200)
- Backend (API) : [http://localhost:8080](http://localhost:8080)
- Base de données PostgreSQL : `localhost:5432`

--------------------------------------------------------------------------------------------------------
5.Arrêter l'application
--------------------------------------------------------------------------------------------------------

Pour arrêter tous les services :
```bash
# Appuyez sur Ctrl+C dans le terminal, puis :
docker-compose down
```

Pour arrêter et supprimer également les données de la base :
```bash
docker-compose down -v
```

--------------------------------------------------------------------------------------------------------
6.Le projet
--------------------------------------------------------------------------------------------------------

Temps passé sur le projet : ~4h30

- Backend : Flask, SQLAlchemy
- Frontend : Angular, Bootstrap
- Base de données : PostgreSQL 15
- Containerisation : Docker, Docker Compose

