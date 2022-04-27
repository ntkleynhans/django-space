# django-space
Django playground


## Requirements

docker & docker-compose

See https://docs.docker.com/get-docker/


## Makefile commands


### Build docker images

```
make build
```

### Run server

This will run the development Django server on 127.0.0.1:8000

```
make server
```

### Database migrations

Make migrations based on user models

```
make makemigrations
```

Migrate the database using:

```
make migrate
```

### Django Admin

Create an admin user and provide a password

```
make createsuperuser
```

Locally, you can access the admin console on http://127.0.0.1/admin

### Linting and Formatting

Run pylint on your code located in `FOLDER`

```
make lint FOLDER=...
```

Run `black` formatter on code located in `FOLDER`

```
make format FOLDER=...
```

