COBOL for CGI
===============

Docker image for COBOL CGI environments.

Build Image
---------------

You can manually build image by below commands.

```bash
$ git clone https://github.com/koduki/example-cobol.git
$ cd example-cobol
$ docker build -t koduki/example-cobol .
```

And you can also pull image from DockerHub.

Check version
---------------

```bash
$ docker-compose run app cobc -version
cobc (OpenCOBOL) 1.1.0
Copyright (C) 2001-2009 Keisuke Nishida / Roger While
Built    Nov 02 2013 00:16:01
Packaged Feb 06 2009 10:30:55 CET
```

Run Hello, World
---------------

```bash
$ docker-compose run app cobc -x -o bin/HELLO ./src/cobol/HELLO.COB 
$ docker-compose run app bin/HELLO 
Hello, World!
```

Run CGI
---------------

Build and Run Application.

```bash
$ docker-compose run app cobc -x -o bin/APP ./src/cobol/APP.COB 
$ docker-compose up
```

Chceck IP address.

```bash
$ docker-machine ip default
192.168.99.100
```

Access by Web browser

```
http://192.168.99.100/app.cgi?arg1=3&arg2=2
```
