#!/usr/bin/env bash
PROJECT='cloud'
cd /data/pearl/${PROJECT}
rm ${PROJECT}-eureka.jar
rm ${PROJECT}-zuul.jar
mkdir -p repo
cp eureka/target/eureka-*.jar repo/
cp zuul/target/zuul-*.jar repo/
cp eureka/target/eureka-*.jar ./${PROJECT}-eureka.jar
cp zuul/target/zuul-*.jar ./${PROJECT}-zuul.jar
rm -rf eureka
rm -rf zuul
docker-compose down;
docker-compose up -d;