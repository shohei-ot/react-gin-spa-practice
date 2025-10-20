# react-gin-spa-practice

## About

This is my practice project.  
I'll try to learn how to create a SPA using React.js (TypeScript) and RESTful API built with Gin (Golang).

## Build

```sh
make
```

## Run

```sh
./bin/react-gin-spa-practice -port 80
```

## Development

### Generate gin api server stub

```sh
openapi-generator generate \
  -i ./openapi/openapi.yml \
  -g go-gin-server \
  -o ./backend \
  --git-user-id=shohei-ot \
  --git-repo-id=react-gin-spa-practice
```

### Generate api client (swr)

```sh
cd frontend
npm run openapi:generate
```
