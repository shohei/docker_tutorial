docker run -it --name mydebian debian:bookworm-slim /bin/bash
docker start mydebian
docker exec -it mydebian /bin/bash
docker stop mydebian
