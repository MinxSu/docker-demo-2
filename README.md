### build docker image
```bash
docker build -t docker-demo-api:0.0.1 -f Dockerfile .
```

### run container
```bash
docker run -dp 8080:8080 docker-demo-api:0.0.1
```
