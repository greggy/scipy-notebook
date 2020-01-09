# Docker container scipy-notebook


Docker container with scipy stack

Scipy stack includes:
- numpy
- pandas
- ta-lib
- seaborn
- ib_insync
- IB API 9.76

To run image for the first time:
```
make run
```

then you can use stop & start:
```
make stop
```
and
```
make start
```

Open url:
```
http://localhost:8888/
```

Default password is `test`.

If you want to connect to TWS from your container, just add ip address to trusted ips. To get neede ip, run:
```
make ip
```
