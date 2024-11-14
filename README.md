# react-application-template

## main components
- [X] reactjs
- [X] webpack
- [X] ui-kit - material

## ## Manual build

- install dependancies
```bash
npm install
```
- run local
```bash
npm start
```
- build webpack
```bash
npm run build
```

## Run in docker compose

Deploy application container env in docker use compose
```bash
docker-compose build
docker-compose up
```

Destroy application env
```bash
docker-compose down
```

Local application url: http://localhost:8081

## Deploy to kubernetes
This deploy will pull follow docker images:
- application from github: ghcr.io/kostakoff/react-application-template:latest

Deployment:
- go to deployment folder
```bash
cd ./Deployment
```
- render helm chart
```bash
helm template my-front ./my-front
```
- install helm chart
```bash
helm install my-front ./my-front
```
- update deploy
```bash
helm upgrade --install my-front ./my-front
```
- remove helm chart
```bash
helm uninstall my-front
```
Link for microk8s: https://front.k8s.localhost
