# pmmp-docker
Docker container for running a Minecraft PE server (pocketmine) https://pmmp.io
* `git clone git@github.com:ColinHarrington/pmmp-docker.git`
* `docker build -t pmmp ./pmmp-docker` 
* `docker run -it -p 19132:19132 -p 19132:19132/udp --name pmmp pmmp`
