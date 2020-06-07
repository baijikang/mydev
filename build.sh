docker stop mydev
docker rm  mydev
docker image rm  mydev
docker build -t mydev .

docker run -it --name mydev mydev /bin/bash
