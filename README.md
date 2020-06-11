# videos

build docker image
```bash
docker build -t shubhamtatvamasi/videos .
```

run on docker
```bash
docker run --rm -it -p 80:80 shubhamtatvamasi/videos
```

push on dockerhub
```bash
docker push shubhamtatvamasi/videos
```
---

deploy on kubernetes
```bash
kubectl run videos --image=shubhamtatvamasi/videos --restart=Never --port=80 --expose

kubectl patch svc videos \
  --patch='{"spec": {"type": "NodePort"}}'

kubectl patch svc videos \
  --patch='{"spec": {"ports": [{"nodePort": 30006, "port": 80}]}}'
```
