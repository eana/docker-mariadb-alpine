FROM alpine:3.9

RUN set -xe && \
    apk add --update --no-cache mariadb mariadb-client && \
    mkdir /docker-entrypoint-initdb.d && \

    # comment out a few problematic configuration values
    # don't reverse lookup hostnames, they are usually another container
    sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf && \
    echo -e 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf && \
    mv /tmp/my.cnf /etc/mysql/my.cnf && \

    rm -rf /tmp/src && \
    rm -rf /var/cache/apk/*

VOLUME /var/lib/mysql

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
