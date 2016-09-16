# PHP Dockerized

> Dockerized PHP development stack: Nginx, MySQL, PHP-FPM, Memcached, Solr

PHP Dockerized gives you everything you need for developing PHP applications locally. The idea came from the need of having an OS-agnostic and virtualized alternative to the great [MNPP](https://github.com/jyr/MNPP) stack as regular LAMP stacks quite simply can't keep up with the Nginx + PHP-FPM combo in terms of performance. I hope you'll find it as useful an addition to your dev-arsenal as I've found it!

## What's inside

* [Nginx](http://nginx.org/)
* [MySQL](http://www.mysql.com/)
* [PHP-FPM](http://php-fpm.org/)
* [Memcached](http://memcached.org/)

Composer, drush and xdebug are already installed.

## Requirements

* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Docker Machine](https://docs.docker.com/machine/) (Mac and Windows only)

## Running

Set up a Docker Machine and then run:

```sh
$ docker-compose up
```

That's it! You can now access your configured sites via the IP address of the Docker Machine or locally if you're running a Linux flavour and using Docker natively.

## Management
Use [docker-mysql-scripts](https://github.com/luiselizondo/docker-mysql-scripts) to ease mysql database management.

Show running containers:

```sh
$ docker-compose ps
```

Log into an container:

```sh
$ docker exec -it containername bash
```

Connect to the mysql container from a php script:
use `mysql` instead of `localhost`

## Install Drupal
```sh
./scripts/install.sh
```

## License

Copyright &copy; 2014-2015 [Tobias Englert](http://github.com/tobiase). Licensed under the terms of the [MIT license](LICENSE.md).
