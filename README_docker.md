## Build the Docker Image
```
docker build -t p2p-file-sharing .
```

## Run the Container with interactive shell
```
docker run --rm -it p2p-file-sharing
```

## Compile and Start Tracker and Client

For tracker
```
cd /app/tracker
make
./tracker tracker_info.txt 1
```

for client: open another terminal and attach the same container
```
docker exec -it <container_id> bash
```

- container id is the running container id, we can get from 'docker ps'

```
cd /app/client
make
./client 127.0.0.3:200 tracker_info.txt
```

## NOTE
- We cannot access local system things inside of out container.