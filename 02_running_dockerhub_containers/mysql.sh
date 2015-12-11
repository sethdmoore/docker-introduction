docker run -d --name some-mysql \
    -e MYSQL_ROOT_PASSWORD=my-secret-pw \
    -p 3306:3306 \
    mysql:5.5.47
