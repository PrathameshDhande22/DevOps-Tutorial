# Docker Tutorial

Docker practice projects that show how different applications can be packaged and run in containers.

## Containerized applications

| Folder | Application | Container port |
| --- | --- | --- |
| [`flask-app`](./flask-app) | Flask user-management application with SQLite | `8080` |
| [`client-server/client-demo`](./client-server/client-demo) | React client served by Caddy | `80` |
| [`client-server/server-demo`](./client-server/server-demo) | Node.js/Express API with Prisma | `5000` |
| [`dotnet/application-mvc`](./dotnet/application-mvc) | ASP.NET MVC application | `8080` |

## Before you begin

- Install [Docker Desktop](https://www.docker.com/products/docker-desktop/) and make sure Docker is running.
- Use a terminal in the folder of the application you want to run.
- Check each application's configuration before starting it, especially projects that need a database.

## Build and run

### Flask application

```bash
cd flask-app
docker build -t devops-flask .
docker run --rm -p 8080:8080 devops-flask
```

Open `http://localhost:8080`.

### React client

```bash
cd client-server/client-demo
docker build -t devops-client .
docker run --rm -p 8080:80 devops-client
```

Open `http://localhost:8080`.

### Node.js API

```bash
cd client-server/server-demo
docker build -t devops-server .
docker run --rm -p 5000:5000 -e DATABASE_URL="<your-mongodb-connection-string>" devops-server
```

The API needs a MongoDB connection string. After it starts, check `http://localhost:5000/health`.

### ASP.NET MVC application

```bash
cd dotnet/application-mvc
docker build -t devops-dotnet-mvc .
docker run --rm -p 8080:8080 devops-dotnet-mvc
```

This application uses PostgreSQL. Update its connection string or ensure a compatible PostgreSQL instance is available before running it.

## Docker Compose example

The [`docker-compose.yaml`](./docker-compose.yaml) file demonstrates running PostgreSQL and pgweb together. Review its database credentials and secret-file settings before using it in your local environment.
