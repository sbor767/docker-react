# React + Docker Example

This is a simple React app wrapped with a Docker build pipeline and served using Nginx.

## Features

- Based on `create-react-app`
- Production build served by `nginx`
- Includes example `Dockerfile` and Nginx config

## Build and Run

```bash
docker build -t docker-react .
docker run -p 8080:80 docker-react
```
Then open http://localhost:8080

## License

MIT
