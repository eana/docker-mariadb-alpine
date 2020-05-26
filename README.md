# docker-mariadb-alpine
This Docker image is based on the minimal Alpine Linux with MariaDB v10.1.26
(MySQL Compatible) database server.

----

## What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The
image is only 5 MB in size and has access to a package repository that is much
more complete than other BusyBox based images. This makes Alpine Linux a great
image base for utilities and even production applications. Read more about
Alpine Linux here and you can see how their mantra fits in right at home with
Docker images.

## What is MariaDB?
MariaDB Server is one of the most popular database servers in the world. Itâ€™s
made by the original developers of MySQL and guaranteed to stay open source.
Notable users include Wikipedia, WordPress.com and Google.

MariaDB turns data into structured information in a wide array of applications,
ranging from banking to websites. It is an enhanced, drop-in replacement for
MySQL. MariaDB is used because it is fast, scalable and robust, with a rich
ecosystem of storage engines, plugins and many other tools make it very
versatile for a wide variety of use cases.

MariaDB is developed as open source software and as a relational database it
provides an SQL interface for accessing data. The latest versions of MariaDB
also include GIS and JSON features.

## Features

  * Memory usage is minimal on a simple install.
  * MariaDB the MySQL replacement

## Volume structure

* `/var/lib/mysql`: Database files

## Environment Variables:

### Main Mariadb parameters:
* `MYSQL_DATABASE`: specify the name of the database
* `MYSQL_USER`: specify the User for the database
* `MYSQL_PASSWORD`: specify the User password for the database
* `MYSQL_ROOT_PASSWORD`: specify the root password for Mariadb

## Creating an instance

```
docker run -d --name mysql -p 3306:3306 \
    -v /var/lib/mysql:/var/lib/mysql \
    -e MYSQL_DATABASE=database \
    -e MYSQL_USER=user \
    -e MYSQL_PASSWORD=FmRapcMH3jNAninS \
    -e MYSQL_ROOT_PASSWORD=T2I47YFWXwyNVZzd \
    --restart=always \
    docker-mariadb-apline
```
