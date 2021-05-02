# rpi-wordpress
Wordpress wth MySQL and Redis for Raspberry Pi

## Database
Please adjust the environment variable "blog.env". All necessary accesses to the database are controlled via this variable

## Start & Stop Scripts
Start with
```sh
docker-compose up -d
```
Stop with
```sh
docker-compose down
```