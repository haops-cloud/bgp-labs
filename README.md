# bgp-labs
bgp playground

```(shell)
$ #build
docker build . -t gobgp:latest

# Run
$ docker container run -v ${PWD}/bgp.conf:/bgp.conf -p 50051:50051 gobgp
```